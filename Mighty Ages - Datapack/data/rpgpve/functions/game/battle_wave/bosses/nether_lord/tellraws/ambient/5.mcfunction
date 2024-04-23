#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
playsound entity.blaze.ambient master @s ~ ~ ~ 5 1.5 0
tellraw @s ["",{"text":"Nether Lord","color":"dark_red"},{"text":" >> ","color":"dark_gray"},{"selector":"@a[tag=IsInRPGPVEGame,sort=random,limit=1]","color":"aqua"},{"text":"! Your journey will end soon!","color":"red"}]
#----------------------------------------#
