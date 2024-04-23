#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute as @a[tag=IsInRPGPVEGame] at @s run playsound block.fire.ambient master @s ~ ~ ~ 3 0 
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.wither.ambient master @s ~ ~ ~ 1 0.65
execute as @a[tag=IsInRPGPVEGame] at @s run tellraw @s ["",{"text":"?????? ????","color":"gray"},{"text":" >>","color":"black"},{"text":" Little adventurers trying to prove their strength!","color":"dark_gray"}]
schedule function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/start/3 4s
#----------------------------------------#
