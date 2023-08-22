#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
execute if score @s MaxHealthUpgradeTier matches 0..9 run scoreboard players add @s MaxHealthBonus 10
execute if score @s MaxHealthUpgradeTier matches 10.. run scoreboard players add @s MaxHealthBonus 20

scoreboard players add @s MaxHealthUpgradeTier 1

scoreboard players operation #RomanNumIn Temp = @s MaxHealthUpgradeTier
function rpgpve:get_roman_numeral

tellraw @s ["",{"text":"You upgraded to ","color":"green"},{"text":"Maximum Health ","color":"red"},{"nbt":"RomanNumeral","storage":"rpgpve:roman","interpret": true,"color":"red"},{"text":"!","color":"green"}]

execute if score SharedPurse GameSettings matches 1 run scoreboard players operation #SharedPurse Temp -= #GoldCost Temp
execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold -= #GoldCost Temp
function rpgpve:game/sidebar/update_gold
function rpgpve:stats/calculate/stats

playsound entity.player.levelup master @s ~ ~ ~ 1 2
#------------------------------------------#