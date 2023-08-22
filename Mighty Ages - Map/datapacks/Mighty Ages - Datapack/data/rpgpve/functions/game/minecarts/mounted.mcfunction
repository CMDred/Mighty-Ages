#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------CREATE INSTANCE-------------#
tag @s add IsOnMinecart
execute on vehicle run function rpgpve:game/minecarts/place_redstone
advancement revoke @s only rpgpve:minecarts/mount
#----------------------------------------#
