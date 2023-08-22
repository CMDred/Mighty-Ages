#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #Digging Temp 0

execute as @e[type=giant,tag=Digging] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/main_digging

execute unless score #Digging Temp matches 0 run schedule function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/main_digging_sched 1t
#----------------------------------------#
