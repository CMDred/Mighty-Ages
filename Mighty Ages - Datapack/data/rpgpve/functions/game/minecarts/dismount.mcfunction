#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------CREATE INSTANCE-------------#
playsound entity.ender_dragon.flap master @s ~ ~ ~ 0.5 1
execute if entity @e[type=minecart,distance=..1.5] run tellraw @s ["",{"text":"WOOSH!","color":"#8a421a","bold":true},{"text":" The "},{"text":"Minecart","color":"#8a421a"},{"text":" was sent back to the start of the track! Dwarf magic or miner science?"}]
execute as @e[type=minecart,sort=nearest,limit=1] run function rpgpve:game/minecarts/tp_carts/list
tag @s remove IsOnMinecart
#----------------------------------------#
