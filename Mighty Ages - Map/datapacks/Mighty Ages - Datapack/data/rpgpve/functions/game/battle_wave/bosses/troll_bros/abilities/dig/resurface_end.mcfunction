#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute as @a[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..2.5] run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/hit
tag @s remove Resurfacing
data modify entity @s NoGravity set value 0b
data modify entity @s Glowing set value 1b
#----------------------------------------#
