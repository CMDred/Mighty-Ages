#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------START GAME---------------#
scoreboard players remove #CooldownSeconds Dummy 1
scoreboard players set #StartCooldown Dummy 20
execute if score #CooldownSeconds Dummy matches 1 run tellraw @a[tag=IsInRPGPVELobby] ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"The game will start in "},{"score":{"name":"#CooldownSeconds","objective":"Dummy"},"bold":true},{"text":" second!"}]
execute if score #CooldownSeconds Dummy matches 2.. run tellraw @a[tag=IsInRPGPVELobby] ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"The game will start in "},{"score":{"name":"#CooldownSeconds","objective":"Dummy"},"bold":true},{"text":" seconds!"}]

execute if score #CooldownSeconds Dummy matches 4..10 as @a[tag=IsInRPGPVELobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score #CooldownSeconds Dummy matches 3 as @a[tag=IsInRPGPVELobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 0.3 1 
execute if score #CooldownSeconds Dummy matches 2 as @a[tag=IsInRPGPVELobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 0.2 1 
execute if score #CooldownSeconds Dummy matches 1 as @a[tag=IsInRPGPVELobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 0.1 1 
execute if score #CooldownSeconds Dummy matches ..0 run function rpgpve:game/start_game/teleport_and_start
execute if score #CooldownSeconds Dummy matches ..0 run scoreboard players set #StartCooldown Dummy 0
#----------------------------------------#
