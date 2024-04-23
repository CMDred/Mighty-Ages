#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#----------------RECORDS-----------------#
execute unless score #HighestMelee GameRecords matches 1.. run return 0
execute if score #HighestMelee GameRecords = #PreviousHighestMelee GameRecords run return 0

execute unless entity @a[tag=FormerHighestMeleeRecordHolder] run tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"WOW! ","color":"red","bold":true},{"text":"During this wave, "},{"selector":"@a[tag=HighestMeleeRecordHolder]","color":"yellow"},{"text":" has beaten the "},{"text":"Highest Melee Damage","color":"yellow"},{"text":" record with a melee damage of "},{"score":{"name": "#HighestMelee","objective": "GameRecords"},"color":"yellow"},{"text":" points!"}]
execute if entity @a[tag=FormerHighestMeleeRecordHolder] run tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"WOW! ","color":"red","bold":true},{"text":"During this wave, "},{"selector":"@a[tag=HighestMeleeRecordHolder]","color":"yellow"},{"text":" has beaten the "},{"text":"Highest Melee Damage","color":"yellow"},{"text":" record with a melee damage of "},{"score":{"name": "#HighestMelee","objective": "GameRecords"},"color":"yellow"},{"text":" points! "},{"text":"(Previously beaten by ","color":"gray"},{"selector":"@a[tag=FormerHighestMeleeRecordHolder]","color":"dark_gray"},{"text":" with a melee damage of ","color":"gray"},{"score":{"name": "#PreviousHighestMelee","objective": "GameRecords"},"color":"dark_gray"},{"text":" points.)","color":"gray"}]
playsound entity.wither.spawn master @a ~ ~ ~ .8 2 0
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ .8 0.5 0
#----------------------------------------#