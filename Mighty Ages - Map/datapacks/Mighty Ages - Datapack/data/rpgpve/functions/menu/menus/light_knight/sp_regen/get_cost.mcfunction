#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#----------------UPGRADES------------------#
execute if score @s SkillPointRegenUpgradeTier matches 0 run scoreboard players set #SPRegenCost Temp 800
execute if score @s SkillPointRegenUpgradeTier matches 1 run scoreboard players set #SPRegenCost Temp 1120
execute if score @s SkillPointRegenUpgradeTier matches 2 run scoreboard players set #SPRegenCost Temp 1600
execute if score @s SkillPointRegenUpgradeTier matches 3 run scoreboard players set #SPRegenCost Temp 2700
execute if score @s SkillPointRegenUpgradeTier matches 4 run scoreboard players set #SPRegenCost Temp 5000
#------------------------------------------#