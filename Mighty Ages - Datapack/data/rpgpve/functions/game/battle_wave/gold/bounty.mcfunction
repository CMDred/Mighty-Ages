#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------GOLD-------------------#
scoreboard players operation @s GoldGot = #CurrentBattleWave Dummy
scoreboard players operation @s GoldGot *= #c10 Constant
tellraw @s ["",{"text":"BOUNTY! ","color":"gold","bold":true},{"text":"You got "},{"score":{"name": "@s","objective": "GoldGot"},"color":"gold"},{"text":" gold from killing an enemy at a distance of "},{"score":{"name":"@s","objective":"BowBountyDistance"},"color":"gold"},{"text":"+ meters!"}]
playsound entity.villager.yes master @s ~ ~ ~ 0.7 1
tag @s remove Bountied
#----------------------------------------#
