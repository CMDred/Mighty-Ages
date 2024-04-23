#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
execute as @e[type=item_display,tag=EnderWispItemDisplay] at @s run function rpgpve:game/battle_wave/monsters/ai/ender_wisp/main

execute as @e[type=enderman,tag=VoidSentry] at @s run function rpgpve:game/battle_wave/monsters/ai/void_sentry/main

execute as @e[type=enderman,tag=NullShimmerer] at @s run function rpgpve:game/battle_wave/monsters/ai/null_shimmerer/main

execute as @e[type=skeleton,tag=DimensionalStalker] at @s run function rpgpve:game/battle_wave/monsters/ai/dimensional_stalker/main

execute as @e[type=enderman,tag=VoidborneTitan] at @s run function rpgpve:game/battle_wave/monsters/ai/voidborne_titan/main
execute as @e[type=marker,tag=VoidborneTitanMarker] at @s run function rpgpve:game/battle_wave/monsters/ai/voidborne_titan/main_marker
#----------------------------------------#
