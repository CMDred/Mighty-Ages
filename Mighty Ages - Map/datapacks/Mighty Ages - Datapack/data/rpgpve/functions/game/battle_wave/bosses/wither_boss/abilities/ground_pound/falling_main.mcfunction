#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #BossAnim Temp 1

execute anchored feet positioned ^ ^ ^ unless block ~ ~-1 ~ #rpgpve:allowed run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/ground_pound/explode

execute rotated as @s run tp @s ^ ^ ^4

particle block redstone_block ~ ~ ~ 1 1 1 0.1 100 force
#----------------------------------------#
