# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#          "CMDRED" on Youtube !         #
#                                        #
# ====================================== #
#----------------------------------------#
execute if score @s CastID matches 0 run data modify storage rpgpve:actionbar_text ArrowBar set value '["",{"text":"","color":"white"},{"score":{"name":"@s","objective":"ArrowDamage"},"color":"light_purple"},{"text":" DMG (","color":"white"},{"score":{"name":"@s","objective":"Constant"},"color":"light_purple"},{"text":"m ; ","color":"white"},{"score":{"name":"@s","objective":"DamageTypeArrow"},"color":"light_purple"},{"text":"%)","color":"white"}]'


execute if score @s CastID matches 1..9 run data modify storage rpgpve:actionbar_text ArrowBar set value '["",{"text":"","color":"white"},{"score":{"name":"@s","objective":"ArrowDamage"},"color":"light_purple"},{"text":" DMG (","color":"white"},{"score":{"name":"@s","objective":"Constant"},"color":"light_purple"},{"text":".0","color":"light_purple"},{"score":{"name":"@s","objective":"CastID"},"color":"light_purple"},{"text":"m ; ","color":"white"},{"score":{"name":"@s","objective":"DamageTypeArrow"},"color":"light_purple"},{"text":"%)","color":"white"}]'


execute if score @s CastID matches 10.. run data modify storage rpgpve:actionbar_text ArrowBar set value '["",{"text":"","color":"white"},{"score":{"name":"@s","objective":"ArrowDamage"},"color":"light_purple"},{"text":" DMG (","color":"white"},{"score":{"name":"@s","objective":"Constant"},"color":"light_purple"},{"text":".","color":"light_purple"},{"score":{"name":"@s","objective":"CastID"},"color":"light_purple"},{"text":"m ; ","color":"white"},{"score":{"name":"@s","objective":"DamageTypeArrow"},"color":"light_purple"},{"text":"%)","color":"white"}]'
#----------------------------------------#