#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result bossbar rpgpve:spectral_devourer value run scoreboard players get @e[type=phantom,tag=Boss,limit=1] Health
advancement revoke @s only rpgpve:bosses/hit_devourer
#----------------------------------------#
