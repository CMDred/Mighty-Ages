#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------CREATE INSTANCE-------------#
execute if entity @a[tag=HostingRPGPVE] run function rpgpve:game/host_fail
execute unless entity @a[tag=HostingRPGPVE] run function rpgpve:game/host_success
scoreboard players reset @s HostRPGPVEGame
#----------------------------------------#
