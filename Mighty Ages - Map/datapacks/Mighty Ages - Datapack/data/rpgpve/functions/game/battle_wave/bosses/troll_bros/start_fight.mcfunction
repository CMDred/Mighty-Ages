#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
time set midnight

tp @a[tag=IsInRPGPVEGame,team=red] -20030 -12 1 -90 0
tp @a[tag=IsInRPGPVEGame,team=blue] -19960 -12 1 90 0
team join blockhighlight @e[type=shulker,tag=BlockHighlight]

function rpgpve:game/battle_wave/bosses/troll_bros/summon

scoreboard players reset #DeathTimer Temp

execute as @a[tag=IsInRPGPVEGame] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 10 0 1
#----------------------------------------#
