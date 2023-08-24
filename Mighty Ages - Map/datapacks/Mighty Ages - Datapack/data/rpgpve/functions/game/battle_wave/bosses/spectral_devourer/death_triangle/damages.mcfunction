#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players remove @s CastCD 1
execute if score @s CastCD matches 120 as @e[type=marker,tag=TrianglePoint] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/damage
execute if score @s CastCD matches 100 as @e[type=marker,tag=TrianglePoint] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/damage
execute if score @s CastCD matches 80 as @e[type=marker,tag=TrianglePoint] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/damage
execute if score @s CastCD matches 60 as @e[type=marker,tag=TrianglePoint] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/damage_before_final
execute if score @s CastCD matches 2 as @e[type=marker,tag=TrianglePoint] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/damage_final
execute if score @s CastCD matches 1 run tag @e remove TriangleTarget
execute if score @s CastCD matches 1 run kill @e[type=marker,tag=TrianglePoint]
execute if score @s CastCD matches 1 run tag @s remove CastTriangle
#----------------------------------------#
