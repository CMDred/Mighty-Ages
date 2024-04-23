#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #SkullExists Dummy 1

execute if entity @s[tag=Move] run tp @s ^ ^ ^1.5

execute if entity @a[distance=..3] run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/explode
execute unless block ~ ~ ~ #rpgpve:allowed run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/explode
scoreboard players add @s Dummy 1

execute if score @s Dummy matches 2 run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/skull_grow

execute if score @s Dummy matches 200.. run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/explode

particle end_rod ~ ~-1 ~ 0 0 0 0.01 5 force
particle dust{color:[1d,1d,1d],scale:1} ~ ~ ~ 1.5 1.5 1.5 0.01 50 normal
#----------------------------------------#
