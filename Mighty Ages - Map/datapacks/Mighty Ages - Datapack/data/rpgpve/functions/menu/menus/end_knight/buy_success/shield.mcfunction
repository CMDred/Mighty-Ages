#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
scoreboard players set @s Shield 1

scoreboard players operation @s ShieldCost *= #c140 Constant
scoreboard players operation @s ShieldCost /= #c100 Constant

tellraw @s ["",{"text":"You bought a ","color":"green"},{"text":"Shield","color":"dark_green"},{"text":"!","color":"green"},{"text":"\n(The item will be given when the Battle Wave starts.)","color":"gray"}]

execute if score SharedPurse GameSettings matches 1 run scoreboard players operation #SharedPurse Temp -= #GoldCost Temp
execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold -= #GoldCost Temp
function rpgpve:game/sidebar/update_gold

playsound entity.player.levelup master @s ~ ~ ~ 1 2
#------------------------------------------#