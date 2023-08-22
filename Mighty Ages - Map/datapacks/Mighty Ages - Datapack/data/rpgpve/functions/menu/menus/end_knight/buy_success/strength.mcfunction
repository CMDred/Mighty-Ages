#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
scoreboard players set @s Strength 1

scoreboard players operation @s StrengthCost *= #c15 Constant
scoreboard players operation @s StrengthCost /= #c10 Constant

tellraw @s ["",{"text":"You bought ","color":"green"},{"text":"Strength","color":"red"},{"text":"!","color":"green"}]

execute if score SharedPurse GameSettings matches 1 run scoreboard players operation #SharedPurse Temp -= #GoldCost Temp
execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold -= #GoldCost Temp
function rpgpve:game/sidebar/update_gold

playsound entity.player.levelup master @s ~ ~ ~ 1 2
#------------------------------------------#