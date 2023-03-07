class TodoItem < ApplicationRecord
  WOODS = {
  "Acacia" => ["Block", "Slab", "Stairs", "Fence", "Gate", "Trapdoor", "Pressure plate"], 
  "Oak" => ["Block", "Slab", "Stairs", "Fence", "Gate", "Trapdoor", "Pressure plate"], 
  "Birch" => ["Block", "Slab", "Stairs", "Fence", "Gate", "Trapdoor", "Pressure plate"],
  "Jungle" => ["Block", "Slab", "Stairs", "Fence", "Gate", "Trapdoor", "Pressure plate"],
  "Dark Oak" => ["Block", "Slab", "Stairs", "Fence", "Gate", "Trapdoor", "Pressure plate"],
  "Spruce" => ["Block", "Slab", "Stairs", "Fence", "Gate", "Trapdoor", "Pressure plate"],
  "Spruce" => ["Block", "Slab", "Stairs", "Fence", "Gate", "Trapdoor", "Pressure plate"],
  "Crimson" => ["Block", "Slab", "Stairs", "Fence", "Gate", "Trapdoor", "Pressure plate"],
  "Warped" => ["Block", "Slab", "Stairs", "Fence", "Gate", "Trapdoor", "Pressure plate"], 
  "Mangrove" => ["Block", "Slab", "Stairs", "Fence", "Gate", "Trapdoor", "Pressure plate"]
        }
ROCKS = {
  "Stone" => ["Slab", "Stairs", "Wall"],
  "Smooth Stone" => ["Slab", "Stairs", "Wall"],
  "Cobblestone" => ["Slab", "Stairs", "Wall"],
  "Stone Brick" => ["Slab", "Stairs", "Wall"],
  "Andesite" => ["Slab", "Stairs", "Wall"],
  "Polished Andesite" => ["Slab", "Stairs", "Wall"],
  "Diorite" => ["Slab", "Stairs", "Wall"],
  "Polished Diorite" => ["Slab", "Stairs", "Wall"],
  "Granite" => ["Slab", "Stairs", "Wall"],
  "Polished Granite" => ["Slab", "Stairs", "Wall"],
  "Sandstone" => ["Slab", "Stairs", "Wall"],
  "Red Sandstone" => ["Slab", "Stairs", "Wall"],
  "Brick" => ["Slab", "Stairs", "Wall"],
  "Prismarine" => ["Slab", "Stairs", "Wall"],
  "Nether Brick" => ["Slab", "Stairs", "Wall"],
  "Quartz" => ["Slab", "Stairs", "Wall"],
  "Purpur" => ["Slab", "Stairs", "Wall"],
  "Endstone" => ["Slab", "Stairs", "Wall"],
  "Blackstone" => ["Slab", "Stairs", "Wall"],
  "Copper" => ["Slab", "Stairs", "Wall"],
  "Deepslate" => ["Slab", "Stairs", "Wall"],
  "Mud" => ["Slab", "Stairs", "Wall"]
        }
REDSTONE = %w(Comparator Repeater Redstone_dust Redstone_torch Sculk_sensor Target_block Tripwire Button Pressure_plate Dispenser Dropper Hopper Chest Piston Stick_piston Activator_rails Detector_rails Powered_rails Rails Jukebox Noteblock TNT Iron)
  belongs_to :todo_list
end
