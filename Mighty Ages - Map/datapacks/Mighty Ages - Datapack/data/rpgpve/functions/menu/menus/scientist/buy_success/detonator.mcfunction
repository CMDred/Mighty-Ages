#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
scoreboard players operation @s DetonatorCost *= #c110 Constant
scoreboard players operation @s DetonatorCost /= #c100 Constant

loot give @s loot rpgpve:items/utilities/explosives/detonator

tellraw @s ["",{"text":"You bought a ","color":"green"},{"text":"Detonator","color":"#e30909"},{"text":"!","color":"green"}]

execute if score SharedPurse GameSettings matches 1 run scoreboard players operation #SharedPurse Temp -= #GoldCost Temp
execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold -= #GoldCost Temp
function rpgpve:game/sidebar/update_gold

playsound entity.player.levelup master @s ~ ~ ~ 1 2
playsound entity.firework_rocket.launch master @s ~ ~ ~ 0.8 0
#------------------------------------------#