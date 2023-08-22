#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
scoreboard players operation @s ManaPotionCost *= #c115 Constant
scoreboard players operation @s ManaPotionCost /= #c100 Constant

loot give @s loot rpgpve:items/utilities/mana_potion

tellraw @s ["",{"text":"You bought a ","color":"green"},{"text":"Skill Point Potion","color":"#1c13d4"},{"text":"!","color":"green"}]

execute if score SharedPurse GameSettings matches 1 run scoreboard players operation #SharedPurse Temp -= #GoldCost Temp
execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold -= #GoldCost Temp
function rpgpve:game/sidebar/update_gold

playsound entity.player.levelup master @s ~ ~ ~ 1 2
playsound block.brewing_stand.brew master @s ~ ~ ~ 0.8 1
#------------------------------------------#