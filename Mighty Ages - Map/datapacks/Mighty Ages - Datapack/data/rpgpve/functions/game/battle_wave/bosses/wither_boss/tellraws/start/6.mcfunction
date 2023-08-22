#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute as @a[tag=IsInRPGPVEGame] at @s run playsound block.fire.ambient master @s ~ ~ ~ 3 0 
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.wither.ambient master @s ~ ~ ~ 1 0.3
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 0.5 0.25
execute as @a[tag=IsInRPGPVEGame] at @s run tellraw @s ["",{"text":"Wither Lord","color":"gray"},{"text":" >>","color":"black"},{"text":" En Garde!","color":"dark_gray"}]
schedule function rpgpve:game/battle_wave/bosses/wither_boss/start_fight 4s
#----------------------------------------#
