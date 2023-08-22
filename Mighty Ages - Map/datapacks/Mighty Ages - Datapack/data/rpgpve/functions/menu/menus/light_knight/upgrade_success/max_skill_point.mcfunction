#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
execute if score @s MaxSkillPointUpgradeTier matches 0..4 run scoreboard players add @s MaxSkillPointBonus 20
execute if score @s MaxSkillPointUpgradeTier matches 5..6 run scoreboard players add @s MaxSkillPointBonus 30
execute if score @s MaxSkillPointUpgradeTier matches 7..8 run scoreboard players add @s MaxSkillPointBonus 40
execute if score @s MaxSkillPointUpgradeTier matches 9 run scoreboard players add @s MaxSkillPointBonus 60

scoreboard players add @s MaxSkillPointUpgradeTier 1

scoreboard players operation #RomanNumIn Temp = @s MaxSkillPointUpgradeTier
function rpgpve:get_roman_numeral

tellraw @s ["",{"text":"You upgraded to ","color":"green"},{"text":"Maximum Skill Point ","color":"aqua"},{"nbt":"RomanNumeral","storage":"rpgpve:roman","interpret": true,"color":"aqua"},{"text":"!","color":"green"}]

execute if score SharedPurse GameSettings matches 1 run scoreboard players operation #SharedPurse Temp -= #GoldCost Temp
execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold -= #GoldCost Temp
function rpgpve:game/sidebar/update_gold
function rpgpve:stats/calculate/stats

playsound entity.player.levelup master @s ~ ~ ~ 1 2
#------------------------------------------#