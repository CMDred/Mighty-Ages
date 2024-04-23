scoreboard players set #Percent Dummy 30
execute if score #RegenHealthCount Dummy matches 2 run scoreboard players set #Percent Dummy 75

scoreboard players operation #Delta Dummy = @s MaxHealth

scoreboard players operation #Delta Dummy *= #Percent Dummy

scoreboard players operation #DeltaScaled Dummy = #Delta Dummy

scoreboard players operation #Delta Dummy /= #c100 Constant
scoreboard players operation #DeltaScaled Dummy /= #c10 Constant

scoreboard players operation @s Health += #Delta Dummy
scoreboard players operation @s HealthScaled += #DeltaScaled Dummy

tellraw @s ["",{"text":"REGEN!","color":"red","bold":true},{"text":" The ","color":"white","bold":false},{"text":"Health Potion","color":"#cf3a61","bold":false},{"text":" healed you for ","color":"white","bold":false},{"score":{"name":"#Delta","objective": "Dummy"},"color":"#cf3a61","bold":false},{"text":" health. "},{"text":"(","color":"gray"},{"score":{"name":"#Percent","objective": "Dummy"},"color":"gray"},{"text":"%)","color":"gray"}]

function rpgpve:stats/calculate/stats