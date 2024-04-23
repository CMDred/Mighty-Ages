#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #Digging Dummy 0

execute as @e[type=zombie,tag=Digging] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/main_digging

execute unless score #Digging Dummy matches 0 run schedule function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/main_digging_sched 1t
#----------------------------------------#
