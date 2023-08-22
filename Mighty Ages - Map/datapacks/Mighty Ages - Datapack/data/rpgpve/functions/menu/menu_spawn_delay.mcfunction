#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#---------------COMPASS MENU---------------#
scoreboard players remove @s MenuSpawnDelay 1
execute if entity @s[scores={MenuSpawnDelay=0}] at @s run function rpgpve:menu/summon_menu
scoreboard players reset @s[scores={MenuSpawnDelay=0}] MenuSpawnDelay
#------------------------------------------#