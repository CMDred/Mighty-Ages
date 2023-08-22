#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players add #MusicLoop Temp 1
execute if score #MusicLoop Temp matches 1500.. run function rpgpve:game/preparation_wave/loop_music 


# Center Button
execute if score #CurrentBattleWave Temp matches 0..9 if block 3 31 -11 minecraft:stone_button[powered=true] run function rpgpve:game/preparation_wave/button_clicked
execute if score #CurrentBattleWave Temp matches 10..19 if block -9998 31 -12 minecraft:crimson_button[powered=true] run function rpgpve:game/preparation_wave/button_clicked
execute if score #CurrentBattleWave Temp matches 20..29 if block -14997 25 -10 minecraft:warped_button[powered=true] run function rpgpve:game/preparation_wave/button_clicked
execute if score #CurrentBattleWave Temp matches 30..39 if block -19994 7 -26 minecraft:crimson_button[powered=true] run function rpgpve:game/preparation_wave/button_clicked
execute if score #CurrentBattleWave Temp matches 40..49 in the_end if block -4 44 -7 minecraft:cherry_button[powered=true] run function rpgpve:game/preparation_wave/button_clicked

execute as @a[tag=IsInRPGPVEGame] at @s if block ~ ~ ~ end_gateway run function rpgpve:game/preparation_wave/shop/tp_to_shop
#----------------------------------------#
