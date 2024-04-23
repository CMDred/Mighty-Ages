#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute as @a[tag=IsInRPGPVEGame] at @s run playsound block.fire.ambient master @s ~ ~ ~ 3 0 
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.wither.ambient master @s ~ ~ ~ 1 0.85
execute as @a[tag=IsInRPGPVEGame] at @s run tellraw @s ["",{"text":"Wither Lord","color":"gray"},{"text":" >>","color":"black"},{"text":" You have NO idea where you are!","color":"dark_gray"}]
schedule function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/start/5 3s
#----------------------------------------#
