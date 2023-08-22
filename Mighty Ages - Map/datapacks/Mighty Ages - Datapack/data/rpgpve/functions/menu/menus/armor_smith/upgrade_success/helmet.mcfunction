#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
execute if score @s HelmetTierPurchased matches 0 run loot spawn ~ ~-50 ~ loot rpgpve:items/armors/tier1/tier1helmet
execute if score @s HelmetTierPurchased matches 1 run loot spawn ~ ~-50 ~ loot rpgpve:items/armors/tier2/tier2helmet
execute if score @s HelmetTierPurchased matches 2 run loot spawn ~ ~-50 ~ loot rpgpve:items/armors/tier3/tier3helmet
execute if score @s HelmetTierPurchased matches 3 run loot spawn ~ ~-50 ~ loot rpgpve:items/armors/tier4/tier4helmet
execute if score @s HelmetTierPurchased matches 4 run loot spawn ~ ~-50 ~ loot rpgpve:items/armors/tier5/tier5helmet
execute if score @s HelmetTierPurchased matches 5 run loot spawn ~ ~-50 ~ loot rpgpve:items/armors/tier6/tier6helmet

summon item ~ ~10 ~ {Tags:["ItemFetch"],Item:{id:"minecraft:stone",Count:1b}}
execute positioned ~ ~-50 ~ run data modify entity @e[type=item,tag=ItemFetch,limit=1] Item set from entity @e[type=item,sort=nearest,limit=1] Item 
execute in minecraft:overworld run setblock 700000 2 700000 chest{Items:[{Slot:0b,Count:1b,id:"minecraft:scute"}]}
execute in minecraft:overworld run data modify block 700000 2 700000 Items[{Slot:0b}] set from entity @e[type=item,tag=ItemFetch,limit=1] Item
execute in minecraft:overworld run item replace entity @s armor.head from block 700000 2 700000 container.0
tellraw @s ["",{"text":"You upgraded to ","color":"green"},{"nbt":"Item.tag.display.Name","entity":"@e[type=item,tag=ItemFetch,limit=1]","interpret": true},{"text":"!","color":"green"}]
scoreboard players add @s HelmetTierPurchased 1
kill @e[type=item,tag=ItemFetch]
execute in minecraft:overworld run setblock 700000 2 700000 air
execute if score SharedPurse GameSettings matches 1 run scoreboard players operation #SharedPurse Temp -= #GoldCost Temp
execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold -= #GoldCost Temp
function rpgpve:game/sidebar/update_gold
playsound block.note_block.pling master @s ~ ~ ~ 1 2
#------------------------------------------#