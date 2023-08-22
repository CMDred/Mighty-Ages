#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #Resurfacing Temp 0

execute as @e[type=giant,tag=Resurfacing] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/main_resurfacing

execute unless score #Resurfacing Temp matches 0 run schedule function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/main_resurfacing_sched 1t
#----------------------------------------#
