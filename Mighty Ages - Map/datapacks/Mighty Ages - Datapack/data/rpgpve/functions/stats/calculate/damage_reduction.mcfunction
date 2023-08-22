# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#  "CMDRED" on Youtube ! #
#                                        #
# ====================================== #
#---------------CALCULATE----------------#
# Damage Reduction
scoreboard players operation #Defensex1000 Temp = #Defense Temp
scoreboard players operation #Defensex1000 Temp *= #c1000 Constant
scoreboard players operation #Defensex1000_2 Temp = #Defense Temp
scoreboard players operation #Defensex1000_2 Temp *= #c1000 Constant
#tellraw @a ["",{"text":"Defense"},{"text":" (x1000)","color":"gray"},{"text":" = "},{"score":{"name": "#Defense","objective": "Temp"},"color":"light_purple"},{"text":" * 1000 ","color":"light_purple"},{"text":" = "},{"score":{"name": "#Defensex1000","objective": "Temp"},"color":"light_purple"}]

scoreboard players operation #Defense+X Temp = #Defense Temp
scoreboard players add #Defense+X Temp 385
#tellraw @s ["",{"text":"Defense + 385 = "},{"score":{"name": "#Defense+X","objective": "Temp"},"color":"light_purple"}]

execute store result score #Var1 Temp run scoreboard players operation #Defensex1000 Temp /= #Defense+X Temp
#tellraw @s ["",{"text":"(Defense * 1000) / (Defense + 385) = "},{"score":{"name": "#Var1","objective": "Temp"},"color":"light_purple"}]

execute store result score #Var2 Temp run scoreboard players operation #Defensex1000_2 Temp /= #c1155 Constant
#tellraw @s ["",{"text":"(Defense * 1000) / 1155 = "},{"score":{"name": "#Var2","objective": "Temp"},"color":"light_purple"}]

#tellraw @s ["",{"text":"Damage Reduction = "},{"score":{"name": "#Var1","objective": "Temp"},"color":"light_purple"},{"text":" + "},{"score":{"name": "#Var2","objective": "Temp"},"color":"light_purple"}]
execute store result score #DamageReduction Temp run scoreboard players operation #Var1 Temp += #Var2 Temp
#tellraw @s ["",{"text":"Damage Reduction = "},{"score":{"name": "#DamageReduction","objective": "Temp"},"color":"light_purple"}]

scoreboard players operation @s DamageReduction = #DamageReduction Temp
#----------------------------------------#