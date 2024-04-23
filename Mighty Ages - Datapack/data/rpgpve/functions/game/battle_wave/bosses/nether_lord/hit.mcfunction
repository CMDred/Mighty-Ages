#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result bossbar rpgpve:nether_lord value run scoreboard players get @e[type=magma_cube,tag=Boss,limit=1] Health
advancement revoke @s only rpgpve:bosses/hit_nether_lord
#----------------------------------------#
