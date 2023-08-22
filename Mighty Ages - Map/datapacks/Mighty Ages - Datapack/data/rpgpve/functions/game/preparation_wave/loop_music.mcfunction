#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
stopsound @a * rpgpve:music.wave.preparation
stopsound @a * rpgpve:music.wave.battle
execute as @a[tag=IsInRPGPVEGame,tag=!DontPlayMusic] at @s run playsound rpgpve:music.wave.preparation record @s ~ ~ ~ 0.8 1 1
scoreboard players reset #MusicLoop Temp
#----------------------------------------#
