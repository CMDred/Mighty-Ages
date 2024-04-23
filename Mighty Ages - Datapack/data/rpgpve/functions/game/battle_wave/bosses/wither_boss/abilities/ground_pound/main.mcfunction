#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #BossAnim Dummy 1

execute facing entity @p[tag=GroundPoundTarget] feet run tp @s ~ ~ ~ ~ ~

scoreboard players add @s Dummy 1
execute if score @s Dummy >= @s AbsMath run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/ground_pound/motion
#----------------------------------------#
