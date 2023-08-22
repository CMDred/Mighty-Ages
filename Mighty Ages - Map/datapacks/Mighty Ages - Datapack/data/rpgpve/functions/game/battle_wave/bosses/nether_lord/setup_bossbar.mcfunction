#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
bossbar set rpgpve:nether_lord players @a[tag=IsInRPGPVEGame]
bossbar set rpgpve:nether_lord visible true
bossbar set rpgpve:nether_lord color red
execute store result bossbar rpgpve:nether_lord max run scoreboard players get @e[type=magma_cube,tag=Boss,limit=1] MaxHealth 
execute store result bossbar rpgpve:nether_lord value run scoreboard players get @e[type=magma_cube,tag=Boss,limit=1] MaxHealth
#----------------------------------------#
