execute at @s run playsound entity.lightning_bolt.thunder master @a[distance=0..] ~ ~ ~ 1 1 0 
execute store result score #RandomMessage Dummy run random value 1..3

execute if score #RandomMessage Dummy matches 1 on attacker if entity @s[type=player] run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@p[tag=NewDead]","color":"gold"},{"text":" was forced off the edge by ","color":"yellow"},{"selector":"@s","color":"gold"},{"text":".","color":"yellow"}]
execute if score #RandomMessage Dummy matches 2 on attacker if entity @s[type=player] run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@p[tag=NewDead]","color":"gold"},{"text":" hit the ground too hard while escaping ","color":"yellow"},{"selector":"@s","color":"gold"},{"text":".","color":"yellow"}]
execute if score #RandomMessage Dummy matches 3 on attacker if entity @s[type=player] run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@p[tag=NewDead]","color":"gold"},{"text":" met the ground under ","color":"yellow"},{"selector":"@s","color":"gold"},{"text":"'s calculated push.","color":"yellow"}]

execute if score #RandomMessage Dummy matches 1 on attacker if entity @s[type=!player] run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@p[tag=NewDead]","color":"gold"},{"text":" was forced off the edge by ","color":"yellow"},{"nbt":"ArmorItems[3].components.'minecraft:custom_data'.MobName","entity":"@s","interpret":true,"color":"gold"},{"text":".","color":"yellow"}]
execute if score #RandomMessage Dummy matches 2 on attacker if entity @s[type=!player] run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@p[tag=NewDead]","color":"gold"},{"text":" hit the ground too hard while escaping ","color":"yellow"},{"nbt":"ArmorItems[3].components.'minecraft:custom_data'.MobName","entity":"@s","interpret":true,"color":"gold"}]
execute if score #RandomMessage Dummy matches 3 on attacker if entity @s[type=!player] run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@p[tag=NewDead]","color":"gold"},{"text":" met the ground under ","color":"yellow"},{"nbt":"ArmorItems[3].components.'minecraft:custom_data'.MobName","entity":"@s","interpret":true,"color":"gold"},{"text":"'s calculated push.","color":"yellow"}]