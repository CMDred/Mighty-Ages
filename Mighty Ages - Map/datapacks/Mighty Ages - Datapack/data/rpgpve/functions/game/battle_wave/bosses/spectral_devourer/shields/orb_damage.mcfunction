#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute as @e[type=phantom,tag=Boss,distance=..3,limit=1] run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/orb_manual_damage
particle explosion_emitter ~ ~ ~ 1 1 1 0.1 20 force
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.generic.explode master @s ~ ~ ~ 0.4 1
kill @s
#----------------------------------------#
