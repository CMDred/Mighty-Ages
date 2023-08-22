playsound entity.wither.spawn master @a[tag=IsInRPGPVEGame] ~ ~ ~ 1 0
tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"YOU LOST!","color":"red","bold":true,"underlined": true}]
tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"Everybody died!","color":"red"}]
schedule function rpgpve:game/end_game 2s