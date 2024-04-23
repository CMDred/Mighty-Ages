#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#--------------LOBBY ITEMS---------------#
scoreboard players add Optimise GameSettings 1
execute if score Optimise GameSettings matches 2.. run scoreboard players set Optimise GameSettings 0

execute if score Optimise GameSettings matches 1 run tellraw @a[tag=IsInRPGPVELobby] ["",{"text":"Optimise Mode ","color":"gold"},{"text":"is now on!","color":"green"}]
execute if score Optimise GameSettings matches 0 run tellraw @a[tag=IsInRPGPVELobby] ["",{"text":"Optimise Mode ","color":"gold"},{"text":"is now off!","color":"red"}]

execute in overworld if score Optimise GameSettings matches 0 run data merge block 0 81 4 {front_text:{messages:['{"text":"[Off]","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=HostingRPGPVE] run function rpgpve:lobby/settings/optimise/toggle"},"bold":true,"color":"dark_red"}','{"text":"Remaining gold"}','{"text":"is kept at"}','{"text":"wave start."}']}}
execute in overworld if score Optimise GameSettings matches 1 run data merge block 0 81 4 {front_text:{messages:['{"text":"[On]","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=HostingRPGPVE] run function rpgpve:lobby/settings/optimise/toggle"},"bold":true,"color":"dark_green"}','{"text":"Remaining gold"}','{"text":"is deleted at"}','{"text":"wave start."}']}}
playsound ui.button.click master @s ~ ~ ~ 0.5 1
#----------------------------------------#
