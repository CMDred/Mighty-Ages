#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------START GAME---------------#
scoreboard players reset @s StartRPGPVEGame
execute unless score #GameHosted Dummy matches 1 run playsound entity.villager.no master @s ~ ~ ~ 1 0.5 0
execute unless score #GameHosted Dummy matches 1 run tellraw @s ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"No one is hosting a game!"}]
execute unless score #GameHosted Dummy matches 1 run return 0

execute store result score #PlayersAmount Dummy if entity @a[tag=IsInRPGPVELobby]
execute if score #PlayersAmount Dummy matches 1 run function rpgpve:game/start_game/fail
execute if score #PlayersAmount Dummy matches 3.. run function rpgpve:game/start_game/fail
execute if score #PlayersAmount Dummy matches 2 run function rpgpve:game/start_game/success
#----------------------------------------#
