#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute as @a[tag=IsInRPGPVEGame] at @s run playsound block.fire.ambient master @s ~ ~ ~ 3 0 
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.wither.ambient master @s ~ ~ ~ 1 0.45
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 0

execute as @a[tag=IsInRPGPVEGame,tag=!DontPlayMusic] at @s run playsound rpgpve:music.wave.boss record @s ~ ~ ~ 0.8 1 1
scoreboard players set #MusicLoop Temp 0


execute as @a[tag=IsInRPGPVEGame] run tellraw @s ["",{"text":"Wither Lord","color":"gray"},{"text":" >>","color":"black"},{"text":" MY TIME DISTORTION!","color":"dark_gray"}]
#----------------------------------------#
