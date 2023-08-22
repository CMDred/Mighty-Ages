#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#--------------SAVING ITEMS----------------#
execute in minecraft:overworld run setblock 700000 1 700000 air
execute in minecraft:overworld if data entity @s Items[{Slot:17b}] run setblock 700000 1 700000 yellow_shulker_box{CustomName:'"Rpg Item Return"',Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b,tag:{MenuItem:1b}}]}
execute in minecraft:overworld run data modify block 700000 1 700000 Items[0] set from entity @s Items[{Slot:17b}]
execute as @p in minecraft:overworld run loot give @s mine 700000 1 700000 minecraft:air{drop_contents:1b}

data remove entity @s Items[{Slot:17b}]
#------------------------------------------#