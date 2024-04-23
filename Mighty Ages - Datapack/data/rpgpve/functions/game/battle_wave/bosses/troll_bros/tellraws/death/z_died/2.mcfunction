#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
playsound block.fire.ambient master @s ~ ~ ~ 3 0 
playsound entity.zombie.ambient master @s ~ ~ ~ 5 1.75 0
execute if entity @e[type=zombie,tag=TrollBroX,distance=..50,limit=1] run tellraw @s ["",{"text":"Troll Bro Z","color":"green"},{"text":" >>","color":"dark_gray"},{"text":" Pleeeeeease kill them!","color":"dark_green"}]
#----------------------------------------#
