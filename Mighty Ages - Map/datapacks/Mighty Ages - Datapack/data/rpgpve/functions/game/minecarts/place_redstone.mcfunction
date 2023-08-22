#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------CREATE INSTANCE-------------#
execute if entity @s[tag=Track1] run setblock -20029 -47 20 redstone_block
execute if entity @s[tag=Track2] run setblock -19998 -41 -17 redstone_block
execute if entity @s[tag=Track3] run setblock -19969 -39 -24 redstone_block
execute if entity @s[tag=Track4] run setblock -19998 -14 3 redstone_block
schedule function rpgpve:game/minecarts/remove_all_redstone_blocks 2s
#----------------------------------------#
