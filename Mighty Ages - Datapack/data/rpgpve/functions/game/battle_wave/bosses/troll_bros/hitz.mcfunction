#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result bossbar rpgpve:troll_bro_z value run scoreboard players get @e[type=zombie,tag=TrollBroZ,limit=1] Health
advancement revoke @s only rpgpve:bosses/hit_bro_z
#----------------------------------------#
