#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tag @s add Attacker
execute anchored feet as @a[tag=IsInRPGPVEGame,tag=!Eliminated,gamemode=adventure,distance=..5,sort=nearest,limit=1] run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/simple_attack/hit
tag @s remove Attacker
scoreboard players reset @s Attack1Timer
#----------------------------------------#
