#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#--------------LOBBY ITEMS---------------#
scoreboard players add Difficulty GameSettings 1
execute if score Difficulty GameSettings matches 3.. run scoreboard players set Difficulty GameSettings 0

execute if score Difficulty GameSettings matches 0 run tellraw @a[tag=IsInRPGPVELobby] ["",{"text":"Difficulty is now","color":"yellow"},{"text":" Easy!","color":"green"}]
execute if score Difficulty GameSettings matches 1 run tellraw @a[tag=IsInRPGPVELobby] ["",{"text":"Difficulty is now","color":"yellow"},{"text":" Medium!","color":"gold"}]
execute if score Difficulty GameSettings matches 2 run tellraw @a[tag=IsInRPGPVELobby] ["",{"text":"Difficulty is now","color":"yellow"},{"text":" Hard!","color":"red"}]

execute in overworld if score Difficulty GameSettings matches 0 run data merge block 2 81 4 {front_text:{messages:['{"text":"[Easy]","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=HostingRPGPVE] run function rpgpve:lobby/settings/difficulty/toggle"},"bold":true,"color":"dark_green"}','{"text":"Players respawn"}','{"text":"at the end of"}','{"text":"each wave."}']}} 
execute in overworld if score Difficulty GameSettings matches 1 run data merge block 2 81 4 {front_text:{messages:['{"text":"[Medium]","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=HostingRPGPVE] run function rpgpve:lobby/settings/difficulty/toggle"},"bold":true,"color":"gold"}','{"text":"Respawn costs"}','{"text":"all the earned"}','{"text":"gold."}']}}
execute in overworld if score Difficulty GameSettings matches 2 run data merge block 2 81 4 {front_text:{messages:['{"text":"[Hard]","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=HostingRPGPVE] run function rpgpve:lobby/settings/difficulty/toggle"},"bold":true,"color":"dark_red"}','{"text":"Players can\'t"}','{"text":"respawn."}','{"text":""}']}}

playsound ui.button.click master @s ~ ~ ~ 0.5 1
#----------------------------------------#
