#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
execute store result score #rand Temp run random value 1..3
execute if score #rand Temp matches 1 run playsound block.anvil.land master @a[distance=..20] ~ ~ ~ 0.1 1
execute if score #rand Temp matches 2 run playsound block.anvil.destroy master @a[distance=..20] ~ ~ ~ 0.1 1
execute if score #rand Temp matches 3 run playsound block.anvil.break master @a[distance=..20] ~ ~ ~ 0.1 1

execute as @a[distance=..4.5,tag=IsInRPGPVEGame,tag=!Eliminated,gamemode=adventure] run function rpgpve:game/battle_wave/anvil/damage
kill @s
#----------------------------------------#
