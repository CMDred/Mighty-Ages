#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------START GAME---------------#
scoreboard players remove #CooldownSeconds Temp 1
scoreboard players set #StartCooldown Temp 20
execute if score #CooldownSeconds Temp matches 1 run tellraw @a[tag=IsInRPGPVELobby] ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"The game will start in "},{"score":{"name":"#CooldownSeconds","objective":"Temp"},"bold":true},{"text":" second!"}]
execute if score #CooldownSeconds Temp matches 2.. run tellraw @a[tag=IsInRPGPVELobby] ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"The game will start in "},{"score":{"name":"#CooldownSeconds","objective":"Temp"},"bold":true},{"text":" seconds!"}]

execute if score #CooldownSeconds Temp matches 4..10 as @a[tag=IsInRPGPVELobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score #CooldownSeconds Temp matches 3 as @a[tag=IsInRPGPVELobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 0 1 
execute if score #CooldownSeconds Temp matches 2 as @a[tag=IsInRPGPVELobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 0 1 
execute if score #CooldownSeconds Temp matches 1 as @a[tag=IsInRPGPVELobby] at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1 
execute if score #CooldownSeconds Temp matches ..0 run function rpgpve:game/start_game/teleport_and_start
execute if score #CooldownSeconds Temp matches ..0 run scoreboard players set #StartCooldown Temp 0
#----------------------------------------#
