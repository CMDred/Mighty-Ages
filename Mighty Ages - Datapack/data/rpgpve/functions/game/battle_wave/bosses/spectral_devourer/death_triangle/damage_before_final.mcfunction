#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #Reach Dummy 400
scoreboard players set #Damage Dummy 42
execute positioned ^ ^ ^ facing entity @a[tag=TriangleTarget] feet run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/damage_raycast
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.wither.shoot master @s ~ ~ ~ 0.4 2 
execute as @a[tag=IsInRPGPVEGame] at @s run playsound block.portal.trigger master @s ~ ~ ~ 0.8 2
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.phantom.ambient master @s ~ ~ ~ 1.5 0 
#----------------------------------------#
