#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
playsound block.fire.ambient master @s ~ ~ ~ 3 0 
playsound entity.zombie.ambient master @s ~ ~ ~ 5 0.5 0
stopsound @s * rpgpve:music.wave.preparation
stopsound @s * rpgpve:music.wave.battle
playsound rpgpve:music.wave.boss record @s[tag=!DontPlayMusic] ~ ~ ~ 2 1 1
tellraw @s ["",{"text":"Troll Bro X","color":"green"},{"text":" >>","color":"dark_gray"},{"text":" I see you're doing pretty good so far...","color":"dark_green"}]
#----------------------------------------#
