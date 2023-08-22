#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------CREATE INSTANCE-------------#
execute as @a[tag=IsOnMinecart] unless data entity @s RootVehicle at @s run function rpgpve:game/minecarts/dismount

schedule function rpgpve:game/minecarts/check_dismount 0.5s
#----------------------------------------#
