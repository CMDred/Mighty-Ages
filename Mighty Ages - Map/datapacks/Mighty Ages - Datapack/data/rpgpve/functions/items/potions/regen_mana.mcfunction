scoreboard players set #Percent Temp 30
execute if score #RegenManaCount Temp matches 2 run scoreboard players set #Percent Temp 75

scoreboard players operation #MaxSkillPoint Temp = @s MaxSkillPoint

scoreboard players operation #MaxSkillPoint Temp *= #Percent Temp

scoreboard players operation #MaxSkillPoint Temp /= #c100 Constant

scoreboard players operation @s SkillPoint += #MaxSkillPoint Temp

tellraw @s ["",{"text":"REGEN!","color":"blue","bold":true},{"text":" The ","color":"white","bold":false},{"text":"Skill Point Potion","color":"#1c13d4","bold":false},{"text":" healed you for ","color":"white","bold":false},{"score":{"name":"#MaxSkillPoint","objective": "Temp"},"color":"#1c13d4","bold":false},{"text":" Skill Point. "},{"text":"(","color":"gray"},{"score":{"name":"#Percent","objective": "Temp"},"color":"gray"},{"text":"%)","color":"gray"}]

function rpgpve:stats/calculate/stats