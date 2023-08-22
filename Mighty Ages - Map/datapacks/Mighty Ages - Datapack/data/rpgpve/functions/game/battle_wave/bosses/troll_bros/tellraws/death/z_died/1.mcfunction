#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
playsound block.fire.ambient master @s ~ ~ ~ 3 0 
playsound entity.zombie.ambient master @s ~ ~ ~ 5 1.75 0
tellraw @s ["",{"text":"Troll Bro Z","color":"green"},{"text":" >>","color":"dark_gray"},{"text":" AAAAAAAH!","color":"dark_green"}]
schedule function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/death/z_died/2_sched 1.5s
#----------------------------------------#