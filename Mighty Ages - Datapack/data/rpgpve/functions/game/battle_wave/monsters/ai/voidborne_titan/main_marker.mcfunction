#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
function rpgpve:game/battle_wave/monsters/ai/voidborne_titan/particles

scoreboard players add @s Dummy 1
execute if score @s Dummy matches 300.. run kill @s

execute as @a[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..4] run effect give @s slowness 1 4 true
execute as @a[tag=IsInRPGPVEGame,tag=!VoidborneTitanEffect,distance=..4] run function rpgpve:game/battle_wave/monsters/ai/voidborne_titan/player_enter_area
execute as @a[tag=IsInRPGPVEGame,tag=VoidborneTitanEffect,distance=4.1..] at @s unless entity @e[type=marker,tag=VoidborneTitanMarker,distance=..4] run function rpgpve:game/battle_wave/monsters/ai/voidborne_titan/player_exit_area
#----------------------------------------#
