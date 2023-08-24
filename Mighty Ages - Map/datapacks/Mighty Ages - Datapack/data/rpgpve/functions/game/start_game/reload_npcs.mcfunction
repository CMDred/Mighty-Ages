#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------START GAME---------------#
execute in rpgpve:rpgpve_game positioned -600 56 0 store result score #Count Temp if entity @a[tag=IsInRPGPVEGame,tag=!Eliminated,distance=..100]
execute if score #Count Temp matches 2.. run return 0

execute in rpgpve:rpgpve_game as @e[type=#rpgpve:npc_entities,tag=NPC] at @s run tp @s ~ ~-100 ~
execute in rpgpve:rpgpve_game positioned -600 56 0 run kill @e[type=item,distance=..120]

execute in rpgpve:rpgpve_game positioned -608 56 -29 unless entity @e[type=#rpgpve:npc_entities,tag=NPC,distance=..3] run function rpgpve:npcs/summon/weaponsmith
execute in rpgpve:rpgpve_game positioned -608 56 -33 unless entity @e[type=#rpgpve:npc_entities,tag=NPC,distance=..3] run function rpgpve:npcs/summon/armorsmith
execute in rpgpve:rpgpve_game positioned -609 58 -9 unless entity @e[type=#rpgpve:npc_entities,tag=NPC,distance=..3] run function rpgpve:npcs/summon/traveller
execute in rpgpve:rpgpve_game positioned -609 58 9 unless entity @e[type=#rpgpve:npc_entities,tag=NPC,distance=..3] run function rpgpve:npcs/summon/crimson_knight
execute in rpgpve:rpgpve_game positioned -591 58 9 unless entity @e[type=#rpgpve:npc_entities,tag=NPC,distance=..3] run function rpgpve:npcs/summon/traveller
execute in rpgpve:rpgpve_game positioned -591 58 -9 unless entity @e[type=#rpgpve:npc_entities,tag=NPC,distance=..3] run function rpgpve:npcs/summon/banker
execute in rpgpve:rpgpve_game positioned -622 57 9 unless entity @e[type=#rpgpve:npc_entities,tag=NPC,distance=..3] run function rpgpve:npcs/summon/light_knight
execute in rpgpve:rpgpve_game positioned -622 57 -9 unless entity @e[type=#rpgpve:npc_entities,tag=NPC,distance=..3] run function rpgpve:npcs/summon/end_knight
execute in rpgpve:rpgpve_game positioned -609 56 24 unless entity @e[type=#rpgpve:npc_entities,tag=NPC,distance=..3] run function rpgpve:npcs/summon/archer
execute in rpgpve:rpgpve_game positioned -594 56 28 unless entity @e[type=#rpgpve:npc_entities,tag=NPC,distance=..3] run function rpgpve:npcs/summon/witch
execute in rpgpve:rpgpve_game positioned -608 56 36 unless entity @e[type=#rpgpve:npc_entities,tag=NPC,distance=..3] run function rpgpve:npcs/summon/scientist
execute if score #CurrentBattleWave Temp matches 20.. in rpgpve:rpgpve_game positioned -595 56 -28 run function rpgpve:npcs/summon/mage
#----------------------------------------#
