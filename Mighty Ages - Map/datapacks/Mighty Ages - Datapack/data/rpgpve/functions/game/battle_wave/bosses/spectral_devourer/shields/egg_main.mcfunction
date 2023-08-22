#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
particle dust 1 1 1 1 ~ ~1 ~ 0.25 0.25 0.25 0.1 50 force
execute if block ~ ~-1 ~ #rpgpve:allowed run tp @s ~ ~-0.3 ~ ~16 ~

execute positioned -15000 30 0 if entity @s[distance=30..] at @s facing -15000 30 0 run tp @s ^ ^ ^1.5

scoreboard players add @s Attack1Timer 1
execute if score @s Attack1Timer matches 60.. run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/egg_hatch
#----------------------------------------#
