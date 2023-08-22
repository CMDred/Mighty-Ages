#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#----------------RECORDS-----------------#
tag @a[tag=HighestMeleeRecordHolder] add FormerHolder
tag @a[tag=HighestMeleeRecordHolder] remove HighestMeleeRecordHolder
tag @s add HighestMeleeRecordHolder

execute unless entity @a[tag=FormerHolder] run tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"WOW! ","color":"red","bold":true},{"selector":"@s","color":"yellow"},{"text":" has beaten the "},{"text":"Highest Melee Damage","color":"yellow"},{"text":" record with a melee damage of "},{"score":{"name": "#FinalDamage","objective": "Temp"},"color":"yellow"},{"text":" points!"}]

execute if entity @a[tag=FormerHolder] run tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"WOW! ","color":"red","bold":true},{"selector":"@s","color":"yellow"},{"text":" has beaten the "},{"text":"Highest Melee Damage","color":"yellow"},{"text":" record with a melee damage of "},{"score":{"name": "#FinalDamage","objective": "Temp"},"color":"yellow"},{"text":" points! "},{"text":"(Previously beaten by ","color":"gray"},{"selector":"@a[tag=FormerHolder]","color":"dark_gray"},{"text":" with a melee damage of "},{"score":{"name": "#HighestMelee","objective": "GameRecords"},"color":"dark_gray"},{"text":" points.)","color":"gray"}]

scoreboard players operation #HighestMelee GameRecords = #FinalDamage Temp

playsound entity.wither.spawn master @a ~ ~ ~ .8 2 0
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ .8 0.5 0

tag @a remove FormerHolder
#----------------------------------------#
