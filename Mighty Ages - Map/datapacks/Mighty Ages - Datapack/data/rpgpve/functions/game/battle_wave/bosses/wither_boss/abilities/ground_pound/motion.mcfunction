#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tag @s remove DoingGroundPound
tag @s add IsFalling
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 3 2 0

execute facing entity @p[tag=GroundPoundTarget] feet run tp @s ~ ~ ~ ~ ~

function rpgpve:game/battle_wave/bosses/wither_boss/abilities/ground_pound/falling_main_sched
#----------------------------------------#
