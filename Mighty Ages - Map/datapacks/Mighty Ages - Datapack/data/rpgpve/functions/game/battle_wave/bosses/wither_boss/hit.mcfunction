#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute as @e[type=wither,tag=Boss,limit=1] run function rpgpve:game/battle_wave/bosses/wither_boss/setup_bossbar
advancement revoke @s only rpgpve:bosses/hit_wither_lord
#----------------------------------------#
