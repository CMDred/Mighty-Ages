#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
scoreboard players operation @s HealthPotionCost *= #c115 Constant
scoreboard players operation @s HealthPotionCost /= #c100 Constant

loot give @s loot rpgpve:items/utilities/health_potion

tellraw @s ["",{"text":"You bought a ","color":"green"},{"text":"Health Potion","color":"#e30909"},{"text":"!","color":"green"}]

execute if score SharedPurse GameSettings matches 1 run scoreboard players operation #SharedPurse Temp -= #GoldCost Temp
execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold -= #GoldCost Temp
function rpgpve:game/sidebar/update_gold

playsound entity.player.levelup master @s ~ ~ ~ 1 2
playsound block.brewing_stand.brew master @s ~ ~ ~ 0.8 1
#------------------------------------------#