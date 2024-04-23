#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players add @s Attack1Timer 1
tp @s ~ ~ ~ ~20 ~
particle dust{color:[0.129d,0.357d,0.722d],scale:1} ~ ~0.85 ~ 0.25 0.25 0.25 0.1 50 force
execute facing entity @e[type=phantom,tag=Boss,limit=1] eyes run tp @s ^ ^ ^1
execute if entity @e[type=phantom,tag=Boss,distance=..3,limit=1] run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/orb_damage
#----------------------------------------#
