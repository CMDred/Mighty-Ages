#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#----------------RECORDS-----------------#
tag @a[tag=LongestBowShotRecordHolder] add FormerHolder
tag @a[tag=LongestBowShotRecordHolder] remove LongestBowShotRecordHolder
tag @a[tag=DistOrigin] add LongestBowShotRecordHolder

execute unless entity @a[tag=FormerHolder] run tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"WOW! ","color":"red","bold":true},{"selector":"@a[tag=DistOrigin]","color":"yellow"},{"text":" has beaten the "},{"text":"Longest Bow Shot","color":"yellow"},{"text":" record with a distance of "},{"score":{"name": "#DistanceUnit","objective": "Temp"},"color":"yellow"},{"text":",","color":"yellow"},{"score":{"name": "#DistanceDeci","objective": "Temp"},"color":"yellow"},{"text":" meters!"}]

execute if entity @a[tag=FormerHolder] run tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"WOW! ","color":"red","bold":true},{"selector":"@a[tag=DistOrigin]","color":"yellow"},{"text":" has beaten the "},{"text":"Longest Bow Shot","color":"yellow"},{"text":" record with a distance of "},{"score":{"name": "#DistanceUnit","objective": "Temp"},"color":"yellow"},{"text":",","color":"yellow"},{"score":{"name": "#DistanceDeci","objective": "Temp"},"color":"yellow"},{"text":" meters! "},{"text":"(Previously beaten by ","color":"gray"},{"selector":"@a[tag=FormerHolder]","color":"dark_gray"},{"text":" with a distance of "},{"score":{"name": "#BowShotDistUnit","objective": "GameRecords"},"color":"dark_gray"},{"text":",","color":"dark_gray"},{"score":{"name": "#BowShotDistDeci","objective": "GameRecords"},"color":"dark_gray"},{"text":" meters.)","color":"gray"}]

scoreboard players operation #BowShotDistUnit GameRecords = #DistanceUnit Temp
scoreboard players operation #BowShotDistDeci GameRecords = #DistanceDeci Temp

playsound entity.wither.spawn master @a ~ ~ ~ 0.8 2 0
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 0.8 0.5 0

tag @a remove FormerHolder
#----------------------------------------#
