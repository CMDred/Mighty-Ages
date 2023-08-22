#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players operation #HealAmount Temp = @s MaxHealth
scoreboard players operation #HealAmount Temp *= #c15 Constant
scoreboard players operation #HealAmount Temp /= #c100 Constant
tellraw @s ["",{"text":"REGEN! ","color":"red","bold":true},{"selector":"@a[tag=Mate]"},{"text":"'s ","color":"white","bold":false},{"text":"Healing Arrow","color":"#e30909","bold":false},{"text":" healed you for ","color":"white","bold":false},{"score":{"name":"#HealAmount","objective": "Temp"},"color":"#e30909","bold":false},{"text":" health!"}]
scoreboard players operation @s Health += #HealAmount Temp
function rpgpve:stats/calculate/stats
#----------------------------------------#
