#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tag @s remove Digging
data modify entity @s NoGravity set value 1b
data modify entity @s Glowing set value 0b
tag @s add WillResurface 
schedule function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/resurface_sched 2s append
#----------------------------------------#
