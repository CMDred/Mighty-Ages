#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
execute if score @s HealthRegenUpgradeTier matches 0..1 run scoreboard players add @s HPRegenBonus 1
execute if score @s HealthRegenUpgradeTier matches 2..3 run scoreboard players add @s HPRegenBonus 2
execute if score @s HealthRegenUpgradeTier matches 4 run scoreboard players add @s HPRegenBonus 3

scoreboard players add @s HealthRegenUpgradeTier 1

scoreboard players operation #RomanNumIn Temp = @s HealthRegenUpgradeTier
function rpgpve:get_roman_numeral

tellraw @s ["",{"text":"You upgraded to ","color":"green"},{"text":"Health Regeneration ","color":"gold"},{"nbt":"RomanNumeral","storage":"rpgpve:roman","interpret": true,"color":"gold"},{"text":"!","color":"green"}]

execute if score SharedPurse GameSettings matches 1 run scoreboard players operation #SharedPurse Temp -= #GoldCost Temp
execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold -= #GoldCost Temp
function rpgpve:game/sidebar/update_gold

playsound entity.player.levelup master @s ~ ~ ~ 1 2
#------------------------------------------#