class TodoItem < ApplicationRecord
  LIST_OF_ALL_MINECRAFT_ITEMS = ["Acacia Leaves", "Acacia Log", "Acacia Planks", "Acacia Sapling", "Acacia Stairs", "Acacia tree", "Acacia Slab"]
  belongs_to :todo_list
end
