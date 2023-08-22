#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
playsound block.fire.ambient master @s ~ ~ ~ 3 0 
playsound entity.zombie.ambient master @s ~ ~ ~ 5 0.5 0
execute if entity @e[type=giant,tag=TrollBroZ,distance=..50,limit=1] run tellraw @s ["",{"text":"Troll Bro X","color":"green"},{"text":" >>","color":"dark_gray"},{"text":" Z! Do something!","color":"dark_green"}]
#----------------------------------------#
