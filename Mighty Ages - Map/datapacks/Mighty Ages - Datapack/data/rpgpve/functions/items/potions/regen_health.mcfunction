scoreboard players set #Percent Temp 30
execute if score #RegenHealthCount Temp matches 2 run scoreboard players set #Percent Temp 75

scoreboard players operation #MaxHealth Temp = @s MaxHealth

scoreboard players operation #MaxHealth Temp *= #Percent Temp

scoreboard players operation #MaxHealth Temp /= #c100 Constant

scoreboard players operation @s Health += #MaxHealth Temp

tellraw @s ["",{"text":"REGEN!","color":"red","bold":true},{"text":" The ","color":"white","bold":false},{"text":"Health Potion","color":"#e30909","bold":false},{"text":" healed you for ","color":"white","bold":false},{"score":{"name":"#MaxHealth","objective": "Temp"},"color":"#e30909","bold":false},{"text":" health. "},{"text":"(","color":"gray"},{"score":{"name":"#Percent","objective": "Temp"},"color":"gray"},{"text":"%)","color":"gray"}]

function rpgpve:stats/calculate/stats