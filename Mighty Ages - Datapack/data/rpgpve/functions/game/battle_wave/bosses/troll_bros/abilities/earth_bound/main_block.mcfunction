#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #BlockExists Dummy 1

execute unless block ~ ~-1 ~ #rpgpve:allowed run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/earth_bound/kill_block

scoreboard players add @s Dummy 1
execute if score @s Dummy matches 25.. run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/earth_bound/kill_block

execute as @a[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..6] run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/earth_bound/hit 
#----------------------------------------#
