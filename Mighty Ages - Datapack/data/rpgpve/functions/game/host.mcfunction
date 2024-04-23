#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------CREATE INSTANCE-------------#
scoreboard players reset @s HostRPGPVEGame
execute if score #GameHosted Dummy matches 1 run function rpgpve:game/host_fail
execute unless score #GameHosted Dummy matches 1 run function rpgpve:game/host_success
#----------------------------------------#
