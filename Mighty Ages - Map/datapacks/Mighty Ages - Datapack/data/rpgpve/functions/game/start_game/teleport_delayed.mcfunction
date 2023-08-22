#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------START GAME---------------#
execute in rpgpve:rpgpve_game run tp @a[tag=IsInRPGPVEGame] 0 30 0 90 0
execute as @a[tag=IsInRPGPVEGame] run effect give @s minecraft:instant_health 1 25 true
title @a[tag=IsInRPGPVEGame] times 10 35 10
title @a[tag=IsInRPGPVEGame] title {"text":"Game Start!","color":"gold","bold":true}
title @a[tag=IsInRPGPVEGame] subtitle {"text":"Good luck and have fun!","color":"gray","bold":true}
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1
tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"==========================","color":"gold","bold":true}]
tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"            Mighty Ages            ","color":"blue","bold":true}]
tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"      Kill the monsters coming in waves          ","color":"yellow"}]
tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"      and upgrade at the shop using          ","color":"yellow"}]
tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"      their drops!          ","color":"yellow"}]
tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"==========================","color":"gold","bold":true}]
execute in rpgpve:rpgpve_game run function rpgpve:game/start_game/start_sets
#----------------------------------------#
