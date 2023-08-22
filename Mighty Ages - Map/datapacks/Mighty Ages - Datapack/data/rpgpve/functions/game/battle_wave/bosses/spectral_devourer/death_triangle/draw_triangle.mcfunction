#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #Reach Temp 400

execute if entity @s[tag=PointA] run tag @e[type=marker,tag=PointB] add Target
execute if entity @s[tag=PointB] run tag @e[type=marker,tag=PointC] add Target
execute if entity @s[tag=PointC] run tag @e[type=marker,tag=PointA2] add Target

execute facing entity @e[type=marker,tag=Target] feet positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/spectral_devourer/death_triangle/triangle_raycast

tag @e remove Target
#----------------------------------------#
