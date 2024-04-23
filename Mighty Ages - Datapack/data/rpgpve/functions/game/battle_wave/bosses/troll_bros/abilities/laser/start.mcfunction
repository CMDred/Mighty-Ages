#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players reset @s Attack2Timer

execute store result score #RNG Dummy run random value 1..3
execute if score @s Date matches ..0 if score #RNG Dummy matches 1 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/abilities/laser/random

execute anchored feet if block ~ ~-2 ~ #rpgpve:allowed run return 0 

tp @s ~ ~ ~ facing entity @p[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..20] feet

scoreboard players set #Reach Dummy 50
execute anchored eyes positioned ^0.85 ^ ^ facing entity @p[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..20] eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/laser/raycast
scoreboard players set #Reach Dummy 50
execute anchored eyes positioned ^-0.85 ^ ^ facing entity @p[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..20] eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/laser/raycast

#----------------------------------------#
