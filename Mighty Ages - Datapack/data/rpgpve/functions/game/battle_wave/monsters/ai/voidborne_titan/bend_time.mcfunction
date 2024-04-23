#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
kill @e[type=marker,tag=VoidborneTitanMarker]

particle end_rod ~ ~ ~ 1 2 1 1 20 normal
particle enchant ~ ~ ~ 1 2 1 1 20 normal
playsound entity.enderman.stare hostile @a ~ ~ ~ 1.5 2 0

scoreboard players set #Amount Dummy 5
function rpgpve:game/battle_wave/monsters/ai/voidborne_titan/create_loop
scoreboard players reset @s Dummy
execute store result score @s AbsMath run random value 300..500
#----------------------------------------#
