#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------------BUY--------------------#
playsound block.note_block.pling master @s ~ ~ ~ 1 2
playsound entity.villager.yes master @s ~ ~ ~ 0.8 2
tellraw @s {"text":"You upgraded to Magma Sceptre!","color":"green"}
scoreboard players set @s MagicMeleePurchased 11
clear @s diamond_shovel
loot give @s loot rpgpve:items/weapons/sceptres/tier11sceptre
execute if score SharedPurse GameSettings matches 1 run scoreboard players operation #SharedPurse Temp -= #GoldCost Temp
execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold -= #GoldCost Temp
function rpgpve:game/sidebar/update_gold
#------------------------------------------#