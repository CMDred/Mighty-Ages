#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
stopsound @a * rpgpve:music.wave.preparation
stopsound @a * rpgpve:music.wave.battle
stopsound @a * rpgpve:music.wave.boss
execute unless score #BossFight Temp matches 1 as @a[tag=IsInRPGPVEGame,tag=!DontPlayMusic] at @s run playsound rpgpve:music.wave.battle record @s ~ ~ ~ 0.8 1 1
execute if score #BossFight Temp matches 1 as @a[tag=IsInRPGPVEGame,tag=!DontPlayMusic] at @s run playsound rpgpve:music.wave.boss record @s ~ ~ ~ 0.8 1 1

scoreboard players reset #MusicLoop Temp
#----------------------------------------#
