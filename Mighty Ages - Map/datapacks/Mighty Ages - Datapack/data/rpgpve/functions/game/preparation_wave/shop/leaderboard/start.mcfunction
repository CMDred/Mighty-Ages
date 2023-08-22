#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------------SHOP------------------#
stopsound @s * entity.villager.yes
playsound entity.villager.yes master @s ~ ~ ~ 0.8 0
playsound block.note_block.pling master @s ~ ~ ~ 0.4 2

tag @a remove BestKiller

execute as @a[team=blue,tag=IsInRPGPVEGame] if score @s TotalKills > @a[team=red,tag=IsInRPGPVEGame,limit=1] TotalKills run tag @s add BestKiller
execute as @a[team=red,tag=IsInRPGPVEGame] if score @s TotalKills > @a[team=blue,tag=IsInRPGPVEGame,limit=1] TotalKills run tag @s add BestKiller
execute as @a[team=blue,tag=IsInRPGPVEGame] if score @s TotalKills = @a[team=red,tag=IsInRPGPVEGame,limit=1] TotalKills run tag @r[tag=IsInRPGPVEGame,limit=1] add BestKiller

tellraw @s ["",{"text":"\n \n \n------ KILLS LEADERBOARD ------","color":"light_purple","bold":true}]
tellraw @s ["",{"text":"1st","color":"gold"},{"text":" - ","color":"white"},{"selector":"@a[tag=BestKiller]","color":"white"},{"text":" - ","color":"white"},{"score":{"name": "@a[tag=BestKiller,limit=1]","objective": "TotalKills"},"color":"gold"}]
tellraw @s ["",{"text":"2nd","color":"gray"},{"text":" - ","color":"white"},{"selector":"@a[tag=!BestKiller]","color":"white"},{"text":" - ","color":"white"},{"score":{"name": "@a[tag=!BestKiller,limit=1]","objective": "TotalKills"},"color":"gray"}]
tellraw @s ["",{"text":"------------------------------","color":"light_purple","bold":true}]

advancement revoke @s only rpgpve:npcs/click_crimson
#----------------------------------------#
