playsound entity.wither.spawn master @a[tag=IsInRPGPVEGame] ~ ~ ~ 1 0
tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"YOU LOST!","color":"red","bold":true,"underlined": true}]
tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"Everybody died!","color":"red"}]

scoreboard players set #RPGPVEGameState Temp 3

kill @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob]

schedule function rpgpve:game/end_game 2s