#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#----------------UPGRADES------------------#
execute if score @s HealthRegenUpgradeTier matches 0 run scoreboard players set #HPRegenCost Temp 200
execute if score @s HealthRegenUpgradeTier matches 1 run scoreboard players set #HPRegenCost Temp 434
execute if score @s HealthRegenUpgradeTier matches 2 run scoreboard players set #HPRegenCost Temp 860
execute if score @s HealthRegenUpgradeTier matches 3 run scoreboard players set #HPRegenCost Temp 1640
execute if score @s HealthRegenUpgradeTier matches 4 run scoreboard players set #HPRegenCost Temp 3045
#------------------------------------------#