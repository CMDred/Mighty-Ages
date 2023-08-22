#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#--------------SAVING ITEMS----------------#
execute in minecraft:overworld run setblock 700000 1 700000 air
execute in minecraft:overworld run setblock 700000 1 700000 yellow_shulker_box{CustomName:'"Rpg Item Return"',Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b}]}
execute in minecraft:overworld run data modify block 700000 1 700000 Items[0] set from entity @s Inventory[{Slot:8b}]
execute in minecraft:overworld run data modify block 700000 1 700000 Items[0].Slot set value 0b
item replace entity @s hotbar.8 with minecraft:nether_star{MenuItem:1b, HideFlags: 63, display: {Lore: ['{"text":"View all your rpg","color":"gray","italic":false}', '{"text":"progress, including your Skills,","color":"gray","italic":false}', '{"text":"Collections, Recipes, and more!","color":"gray","italic":false}', '{"text":" "}', '{"text":"Click to open!","color":"yellow","italic":false}'], Name: '{"text":"RPG Menu","color":"green","italic":false}'}}
execute in minecraft:overworld run loot give @s mine 700000 1 700000 minecraft:air{drop_contents:1b}
#------------------------------------------#