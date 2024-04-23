# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#          "CMDRED" on Youtube !         #
#                                        #
# ====================================== #
#---------------CALCULATE----------------#
#tellraw @a ["",{"text":"Input Damage = "},{"score":{"name": "#RawDamage","objective": "Dummy"},"color":"light_purple"}]

function rpgpve:stats/calculate/damage_reduction

execute store result score #DamagePercentageTaken Dummy run scoreboard players operation #c1000 Constant -= #DamageReduction Dummy
scoreboard players set #c1000 Constant 1000

#tellraw @a ["",{"text":"Means mob will take "},{"text":"1000","color":"light_purple"},{"text":" - ","color":"light_purple"},{"score":{"name": "#DamageReduction","objective": "Dummy"},"color":"light_purple"},{"text":" = "},{"score":{"name": "#DamagePercentageTaken","objective": "Dummy"},"color":"light_purple"},{"text":"%. OF the original damage."}]


#tellraw @a ["",{"text":"Final Damage = "},{"score":{"name": "#DamagePercentageTaken","objective": "Dummy"},"color":"light_purple"},{"text":" * ","color":"light_purple"},{"score":{"name": "#RawDamage","objective": "Dummy"},"color":"light_purple"},{"text":" / 100 ","color":"light_purple"}]
scoreboard players operation #DefensedDamage Dummy = #RawDamage Dummy
scoreboard players operation #DefensedDamage Dummy *= #DamagePercentageTaken Dummy
scoreboard players operation #DefensedDamage Dummy /= #c1000 Constant
#tellraw @a ["",{"text":"Final Damage = "},{"score":{"name": "#DefensedDamage","objective": "Dummy"}},{"text":" damage."}]
#----------------------------------------#