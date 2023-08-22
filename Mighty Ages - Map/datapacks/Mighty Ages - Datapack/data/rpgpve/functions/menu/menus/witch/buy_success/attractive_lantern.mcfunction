#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
scoreboard players operation @s AttractLanternCost *= #c130 Constant
scoreboard players operation @s AttractLanternCost /= #c100 Constant

loot give @s loot rpgpve:items/utilities/attractive_lantern

tellraw @s ["",{"text":"You bought an ","color":"green"},{"text":"Attractive Lantern","color":"#f7810a"},{"text":"!","color":"green"}]

execute if score SharedPurse GameSettings matches 1 run scoreboard players operation #SharedPurse Temp -= #GoldCost Temp
execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold -= #GoldCost Temp
function rpgpve:game/sidebar/update_gold

playsound entity.player.levelup master @s ~ ~ ~ 1 2
#------------------------------------------#