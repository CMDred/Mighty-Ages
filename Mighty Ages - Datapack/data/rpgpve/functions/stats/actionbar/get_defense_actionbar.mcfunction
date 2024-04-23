# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#          "CMDRED" on Youtube !         #
#                                        #
# ====================================== #
#----------------------------------------#
data modify storage rpgpve:actionbar_text Defense set value '[{"text":"🛡","color":"#38ba86"},{"text":" \\u25ba ","color":"gray"},{"score":{"name":"@s","objective":"PhysicDefense"},"color":"green"}]'

execute if score #CurrentBattleWave Dummy matches 20.. if entity @s[tag=!Enchanted] run data modify storage rpgpve:actionbar_text Defense set value '["",{"text":"🛡","color":"#38ba86"},{"text":" \\u25ba ","color":"gray"},{"score":{"name":"@s","objective":"PhysicDefense"},"color":"green","bold":true},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"MagicDefense"},"color":"aqua"}]'
execute if score #CurrentBattleWave Dummy matches 20.. if entity @s[tag=Enchanted] run data modify storage rpgpve:actionbar_text Defense set value '["",{"text":"🛡","color":"#38ba86"},{"text":" \\u25ba ","color":"gray"},{"score":{"name":"@s","objective":"PhysicDefense"},"color":"green"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"MagicDefense"},"color":"aqua","bold":true}]'
#----------------------------------------#