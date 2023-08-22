#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
bossbar set rpgpve:spectral_devourer players @a[tag=IsInRPGPVEGame]
bossbar set rpgpve:spectral_devourer visible true
bossbar set rpgpve:spectral_devourer color pink
execute store result bossbar rpgpve:spectral_devourer max run scoreboard players get @e[type=phantom,tag=Boss,limit=1] MaxHealth 
execute store result bossbar rpgpve:spectral_devourer value run scoreboard players get @e[type=phantom,tag=Boss,limit=1] MaxHealth
#----------------------------------------#
