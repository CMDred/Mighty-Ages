#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
playsound block.fire.ambient master @s ~ ~ ~ 3 0 
playsound entity.wither.ambient master @s ~ ~ ~ 1 0.85
tellraw @s ["",{"text":"?????? ????","color":"gray"},{"text":" >>","color":"black"},{"text":" Oh... Would you look at that!","color":"dark_gray"}]
schedule function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/start/2 3s
#----------------------------------------#
