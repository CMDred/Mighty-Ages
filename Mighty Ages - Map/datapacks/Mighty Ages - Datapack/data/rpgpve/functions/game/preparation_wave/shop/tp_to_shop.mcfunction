#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------------SHOP------------------#
execute in rpgpve:rpgpve_game run tp @s -600 56.5 0 -180 0
playsound block.portal.travel hostile @s ~ ~ ~ 0.05 2 1
playsound entity.enderman.teleport hostile @s ~ ~ ~ 2 1 1
tellraw @s {"text":"Teleported to Shop!","color":"light_purple"}
schedule function rpgpve:game/start_game/reload_npcs 2s
#----------------------------------------#
