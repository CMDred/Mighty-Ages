#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------------TICK------------------#
execute in minecraft:overworld run tp @s 0 5.2 0
execute if entity @s[tag=HostingRPGPVE] run tellraw @a[tag=!HostingRPGPVE,tag=IsInRPGPVELobby] {"text":"The game host left the game so you were transfered back to the hub!","color":"red"}
execute if entity @s[tag=HostingRPGPVE] as @a[tag=!HostingRPGPVE,tag=IsInRPGPVELobby] run function rpgpve:lobby/back_to_hub
tag @s remove IsInRPGPVELobby
tag @s remove HostingRPGPVE
clear @s
effect give @s minecraft:regeneration 3 255 true
tellraw @s ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"You left the lobby."}]
#----------------------------------------#
