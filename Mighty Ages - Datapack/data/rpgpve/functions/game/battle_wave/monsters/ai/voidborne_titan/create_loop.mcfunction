#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players remove #Amount Dummy 1

execute store result score #dX Dummy run random value -80..80
execute store result score #dY Dummy run random value 0..20
execute store result score #dZ Dummy run random value -80..80

execute store result storage rpgpve:voidborne_titan Coords.x float .1 run scoreboard players get #dX Dummy
execute store result storage rpgpve:voidborne_titan Coords.y float .1 run scoreboard players get #dY Dummy
execute store result storage rpgpve:voidborne_titan Coords.z float .1 run scoreboard players get #dZ Dummy

data modify storage rpgpve:voidborne_titan Coords.x set string storage rpgpve:voidborne_titan Coords.x 0 -1
data modify storage rpgpve:voidborne_titan Coords.y set string storage rpgpve:voidborne_titan Coords.y 0 -1
data modify storage rpgpve:voidborne_titan Coords.z set string storage rpgpve:voidborne_titan Coords.z 0 -1

execute summon marker run function rpgpve:game/battle_wave/monsters/ai/voidborne_titan/setup_marker with storage rpgpve:voidborne_titan Coords

execute if score #Amount Dummy matches 1.. run function rpgpve:game/battle_wave/monsters/ai/voidborne_titan/create_loop
#----------------------------------------#
