scoreboard players set #Percent Dummy 30
execute if score #RegenManaCount Dummy matches 2 run scoreboard players set #Percent Dummy 75

scoreboard players operation #Delta Dummy = @s MaxSkillPoint

scoreboard players operation #Delta Dummy *= #Percent Dummy

scoreboard players operation #DeltaScaled Dummy = #Delta Dummy

scoreboard players operation #Delta Dummy /= #c100 Constant
scoreboard players operation #DeltaScaled Dummy /= #c10 Constant

scoreboard players operation @s SkillPoint += #Delta Dummy
scoreboard players operation @s SkillPointScaled += #DeltaScaled Dummy

tellraw @s ["",{"text":"REGEN!","color":"blue","bold":true},{"text":" The ","color":"white","bold":false},{"text":"Skill Point Potion","color":"#3eace1","bold":false},{"text":" healed you for ","color":"white","bold":false},{"score":{"name":"#Delta","objective": "Dummy"},"color":"#3eace1","bold":false},{"text":" Skill Point. "},{"text":"(","color":"gray"},{"score":{"name":"#Percent","objective": "Dummy"},"color":"gray"},{"text":"%)","color":"gray"}]

function rpgpve:stats/calculate/stats