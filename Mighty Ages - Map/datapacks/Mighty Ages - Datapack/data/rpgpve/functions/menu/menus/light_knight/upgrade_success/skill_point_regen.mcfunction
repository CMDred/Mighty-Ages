#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
execute if score @s SkillPointRegenUpgradeTier matches 0..1 run scoreboard players add @s SPRegenBonus 1
execute if score @s SkillPointRegenUpgradeTier matches 2..3 run scoreboard players add @s SPRegenBonus 2
execute if score @s SkillPointRegenUpgradeTier matches 4 run scoreboard players add @s SPRegenBonus 3

scoreboard players add @s SkillPointRegenUpgradeTier 1

scoreboard players operation #RomanNumIn Temp = @s SkillPointRegenUpgradeTier
function rpgpve:get_roman_numeral

tellraw @s ["",{"text":"You upgraded to ","color":"green"},{"text":"Skill Point Regeneration ","color":"blue"},{"nbt":"RomanNumeral","storage":"rpgpve:roman","interpret": true,"color":"blue"},{"text":"!","color":"green"}]

execute if score SharedPurse GameSettings matches 1 run scoreboard players operation #SharedPurse Temp -= #GoldCost Temp
execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold -= #GoldCost Temp
function rpgpve:game/sidebar/update_gold

playsound entity.player.levelup master @s ~ ~ ~ 1 2
#------------------------------------------#