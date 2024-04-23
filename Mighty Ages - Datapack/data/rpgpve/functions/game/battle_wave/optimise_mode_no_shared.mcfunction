#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------WAVE START----------------#
tellraw @a ["",{"text":"Optimised Mode","color":"green","bold":true},{"text":": You lost ","color":"white"},{"score":{"name":"@s","objective": "TotalGold"},"color":"gold"},{"text":" coins!"}]
scoreboard players operation @s LostCoins += @s TotalGold
scoreboard players set @s TotalGold 0
#----------------------------------------#
