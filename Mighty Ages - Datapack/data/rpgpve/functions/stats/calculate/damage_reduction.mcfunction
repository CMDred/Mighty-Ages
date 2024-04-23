# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#          "CMDRED" on Youtube !         #
#                                        #
# ====================================== #
#---------------CALCULATE----------------#
# Damage Reduction
scoreboard players operation #Defensex1000 Dummy = #Defense Dummy
scoreboard players operation #Defensex1000 Dummy *= #c1000 Constant
scoreboard players operation #Defensex1000_2 Dummy = #Defense Dummy
scoreboard players operation #Defensex1000_2 Dummy *= #c1000 Constant
#tellraw @a ["",{"text":"Defense"},{"text":" (x1000)","color":"gray"},{"text":" = "},{"score":{"name": "#Defense","objective": "Dummy"},"color":"light_purple"},{"text":" * 1000 ","color":"light_purple"},{"text":" = "},{"score":{"name": "#Defensex1000","objective": "Dummy"},"color":"light_purple"}]

scoreboard players operation #Defense+X Dummy = #Defense Dummy
scoreboard players add #Defense+X Dummy 385
#tellraw @s ["",{"text":"Defense + 385 = "},{"score":{"name": "#Defense+X","objective": "Dummy"},"color":"light_purple"}]

execute store result score #Var1 Dummy run scoreboard players operation #Defensex1000 Dummy /= #Defense+X Dummy
#tellraw @s ["",{"text":"(Defense * 1000) / (Defense + 385) = "},{"score":{"name": "#Var1","objective": "Dummy"},"color":"light_purple"}]

execute store result score #Var2 Dummy run scoreboard players operation #Defensex1000_2 Dummy /= #c1155 Constant
#tellraw @s ["",{"text":"(Defense * 1000) / 1155 = "},{"score":{"name": "#Var2","objective": "Dummy"},"color":"light_purple"}]

#tellraw @s ["",{"text":"Damage Reduction = "},{"score":{"name": "#Var1","objective": "Dummy"},"color":"light_purple"},{"text":" + "},{"score":{"name": "#Var2","objective": "Dummy"},"color":"light_purple"}]
execute store result score #DamageReduction Dummy run scoreboard players operation #Var1 Dummy += #Var2 Dummy
#tellraw @s ["",{"text":"Damage Reduction = "},{"score":{"name": "#DamageReduction","objective": "Dummy"},"color":"light_purple"}]

scoreboard players operation @s DamageReduction = #DamageReduction Dummy
#----------------------------------------#