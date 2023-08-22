#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute as @a[tag=IsInRPGPVEGame] at @s run playsound block.fire.ambient master @s ~ ~ ~ 3 0 
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.wither.ambient master @s ~ ~ ~ 1 0.45
execute as @a[tag=IsInRPGPVEGame] at @s run tellraw @s ["",{"text":"Wither Lord","color":"gray"},{"text":" >>","color":"black"},{"text":" Let's see if you can handle...","color":"dark_gray"}]
#----------------------------------------#
