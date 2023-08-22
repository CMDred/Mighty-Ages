#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------------SHOP------------------#
execute if score #CurrentBattleWave Temp matches 0..9 in rpgpve:rpgpve_game run tp @s 0 31.5 0
execute if score #CurrentBattleWave Temp matches 10..19 in rpgpve:rpgpve_game run tp @s -10000 31.5 0
execute if score #CurrentBattleWave Temp matches 20..29 in rpgpve:rpgpve_game run tp @s -15000 24.5 0
execute if score #CurrentBattleWave Temp matches 30..39 in rpgpve:rpgpve_game run tp @s -19993 3 -5
execute if score #CurrentBattleWave Temp matches 40..49 in the_end run tp @s 4 43 0

playsound block.portal.travel hostile @s ~ ~ ~ 0.05 2 1
playsound entity.enderman.teleport hostile @s ~ ~ ~ 2 1 1
tellraw @s {"text":"Teleported to Arena!","color":"light_purple"}
advancement revoke @s only rpgpve:npcs/click_traveller
#----------------------------------------#
