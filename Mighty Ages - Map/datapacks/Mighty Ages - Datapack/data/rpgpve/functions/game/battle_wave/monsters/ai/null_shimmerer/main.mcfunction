#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
particle dust 0.294 0.035 0.388 1.2 ~ ~1.2 ~ .5 .666667 .5 0.1 10 normal

execute as @a[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..8] run effect give @s slowness 1 3 true
execute as @a[tag=IsInRPGPVEGame,tag=!NullShimmererEffect,distance=..8] run function rpgpve:game/battle_wave/monsters/ai/null_shimmerer/player_enter_area
execute as @a[tag=IsInRPGPVEGame,tag=NullShimmererEffect,distance=8.1..] at @s unless entity @e[type=enderman,tag=NullShimmerer,distance=..8] run function rpgpve:game/battle_wave/monsters/ai/null_shimmerer/player_exit_area
#----------------------------------------#
