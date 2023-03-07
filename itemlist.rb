require 'rubygems'
require 'hpricot'
require 'mechanize'
require 'yaml'

class MCItems
	Wiki = 'http://www.minecraftwiki.net'
	attr_accessor :items
	def initialize
		@items = []
	end
	
	def get_items
		agent.get Wiki+'/wiki/Data_Values' do |page|
			parse_blocks page
			parse_items page
		end
	end
	
	private
		def agent
			@agent ||= Mechanize.new { |a| a.html_parser = Hpricot }
		end
		
		def parse_blocks(page)
			get_tables(page, 'Block IDs (Minecraft Beta)').each do |table|
				table.search('tr')[1..-1].each do |row|
					tds = row.search 'td'
					@items << { 'id' => tds[1].inner_text.to_i, 'name' => clean_name(tds[3].inner_text), 'image' => get_block_image(tds[0].at 'a') }
				end
			end
		end
		
		def parse_items(page)
			get_tables(page, 'Item IDs').each do |table|
				table.search('tr')[1..-1].each do |row|
					tds = row.search 'td'
					name = clean_name(tds[3].inner_text)
					@items << { 'id' => tds[1].inner_text.to_i, 'name' => name, 'image' => get_item_image(name) }
				end
			end
		end
		
		def get_tables(page, title)
			page.search('#bodyContent2 > h2').each do |heading|
				if heading.inner_text.include? title
					results = []
					node = heading
					found_table = false
					loop do
						node = node.next_sibling
						if node.pathname == 'table'
							found_table = true
							results << node
						elsif found_table
							break
						end
					end
					return results
				end
			end
		end
		
		def get_block_image(a)
			return nil if a.nil?
			path = a[:href]
			agent.get Wiki+path do |doc|
				return Wiki+doc.at('#file a')[:href]
			end
		end
		
		def get_item_image(name)
			f = name.downcase.gsub ' ', '_'
			"http://www.minecraftopia.com/images/blocks/#{f}.png"
		end
		
		# removes whitespace and single characters
		def clean_name(name)
			name.gsub(/\s(\w{1}(\W|\z))+/, '').strip
		end
end

scraper = MCItems.new
scraper.get_items
File.open 'items.yml', 'w' do |f|
	f.puts scraper.items.to_yaml
end