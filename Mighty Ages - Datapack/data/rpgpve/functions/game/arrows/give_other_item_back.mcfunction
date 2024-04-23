#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
execute in minecraft:overworld run setblock 700000 1 700000 air
execute in minecraft:overworld run setblock 700000 1 700000 yellow_shulker_box{CustomName:'"Rpg Item Return"',Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b,components:{"minecraft:custom_data":{MenuItem:1b}}}]}
execute in minecraft:overworld run data modify block 700000 1 700000 Items[0] set from entity @s Inventory[{Slot:8b}]
execute in minecraft:overworld run loot give @s mine 700000 1 700000 minecraft:stick[minecraft:custom_data={drop_contents:1b}]
execute in minecraft:overworld run setblock 700000 1 700000 air
#----------------------------------------#
