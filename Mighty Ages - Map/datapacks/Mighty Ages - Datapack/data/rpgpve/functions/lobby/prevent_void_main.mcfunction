#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------------TICK------------------#
execute as @a[tag=IsInRPGPVELobby] at @s run function rpgpve:lobby/prevent_void
schedule function rpgpve:lobby/prevent_void_main 0.5s
#----------------------------------------#
