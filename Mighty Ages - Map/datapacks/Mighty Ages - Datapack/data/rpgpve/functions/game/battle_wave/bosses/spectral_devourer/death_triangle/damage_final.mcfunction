#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #Reach Temp 400
scoreboard players set #Damage Temp 80
execute positioned ^ ^ ^ facing entity @a[tag=TriangleTarget] feet run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/damage_raycast
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.wither.shoot master @s ~ ~ ~ 0.4 0 
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.phantom.ambient master @s ~ ~ ~ 1.5 0 
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.generic.explode master @s ~ ~ ~ 2 0 
execute as @a[tag=TriangleTarget] at @s run particle large_smoke ~ ~1 ~ 2 2 2 0.1 200 force
execute as @a[tag=TriangleTarget] at @s run particle explosion_emitter ~ ~1 ~ 2 2 2 0.1 80 force
data modify entity @e[type=phantom,tag=Boss,limit=1] NoAI set value 0b
#----------------------------------------#
