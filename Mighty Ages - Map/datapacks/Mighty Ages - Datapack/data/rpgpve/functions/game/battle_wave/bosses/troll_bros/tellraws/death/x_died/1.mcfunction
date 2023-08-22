#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
playsound block.fire.ambient master @s ~ ~ ~ 3 0 
playsound entity.zombie.ambient master @s ~ ~ ~ 5 0.5 0
tellraw @s ["",{"text":"Troll Bro X","color":"green"},{"text":" >>","color":"dark_gray"},{"text":" Oof...","color":"dark_green"}]
schedule function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/death/x_died/2_sched 1.5s
#----------------------------------------#