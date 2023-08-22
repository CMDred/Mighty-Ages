scoreboard players add @s Attack1Timer 1
execute if score @s Attack1Timer >= @s Attack1Delay run function rpgpve:items/explosives/detonator/explode

scoreboard players operation #Delay Temp = @s Attack1Delay
scoreboard players operation #Delay Temp -= @s Attack1Timer

execute in overworld run setblock 700000 1 700000 oak_sign{front_text:{messages:['[{"score":{"name":"#Delay","objective": "Temp"},"color":"dark_red","italic":false,"bold":true}]','{"text":""}','{"text":""}','{"text":""}']}} 
execute in overworld run data modify entity @s CustomName set from block 700000 1 700000 front_text.messages[0]
execute in overworld run setblock 700000 1 700000 air

particle smoke ~ ~0.35 ~ 0.05 0.2 0.05 0.01 10 force