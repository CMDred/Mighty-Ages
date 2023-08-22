#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
time set midnight

execute in rpgpve:rpgpve_game run tp @a[tag=IsInRPGPVEGame,team=red] -20030 -12 1 -90 0
execute in rpgpve:rpgpve_game run tp @a[tag=IsInRPGPVEGame,team=blue] -19960 -12 1 90 0

execute as @a[tag=IsInRPGPVEGame] run stopsound @s * rpgpve:music.wave.preparation
execute as @a[tag=IsInRPGPVEGame] run stopsound @s * rpgpve:music.wave.battle
execute as @a[tag=IsInRPGPVEGame,tag=!DontPlayMusic] at @s run playsound rpgpve:music.wave.boss record @s ~ ~ ~ 2 1 1

execute in rpgpve:rpgpve_game run playsound entity.wither.spawn master @a -20000 -40 0 2 1 0

function rpgpve:game/battle_wave/bosses/wither_boss/summon

scoreboard players set #BossFightTimer Temp 1005
#----------------------------------------#
