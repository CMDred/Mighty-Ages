#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#--------------LOBBY ITEMS---------------#
scoreboard players add SharedPurse GameSettings 1
execute if score SharedPurse GameSettings matches 2 run scoreboard players set SharedPurse GameSettings 0
execute if score SharedPurse GameSettings matches 1 run tellraw @a[tag=IsInRPGPVELobby] ["",{"text":"Shared Purse","color":"gold"},{"text":" is now on!","color":"green"}]
execute if score SharedPurse GameSettings matches 0 run tellraw @a[tag=IsInRPGPVELobby] ["",{"text":"Shared Purse","color":"gold"},{"text":" is now off!","color":"red"}]

execute in overworld if score SharedPurse GameSettings matches 0 run data merge block -2 81 4 {front_text:{messages:['{"text":"[Off]","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=HostingRPGPVE] run function rpgpve:lobby/settings/shared_purse/toggle"},"bold":true,"color":"dark_red"}','{"text":"Players don\'t"}','{"text":"share the same"}','{"text":"purse."}']}}
execute in overworld if score SharedPurse GameSettings matches 1 run data merge block -2 81 4 {front_text:{messages:['{"text":"[On]","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=HostingRPGPVE] run function rpgpve:lobby/settings/shared_purse/toggle"},"bold":true,"color":"dark_green"}','{"text":"Players share"}','{"text":"the same purse."}','{"text":""}']}}

playsound ui.button.click master @s ~ ~ ~ 0.5 1
#----------------------------------------#
