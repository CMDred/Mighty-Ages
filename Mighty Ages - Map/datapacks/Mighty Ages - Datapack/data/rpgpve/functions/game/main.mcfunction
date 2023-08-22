#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
# Game Modules
function rpgpve:stats/main
execute as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:items/main

execute if entity @e[type=potion,tag=CustomPotion] run scoreboard players set #PotionTimer Temp 20
execute if score #PotionTimer Temp matches 1.. run scoreboard players remove #PotionTimer Temp 1
execute if score #PotionTimer Temp matches 1.. run function rpgpve:items/potions/check_effects
execute if score #PotionTimer Temp matches 1.. run tag @a remove RegenHealth
execute if score #PotionTimer Temp matches 1.. run tag @a remove RegenMana

execute as @a unless score @s GoldGot matches 0 run function rpgpve:game/battle_wave/add_gold
execute as @a store result score @s GoldGot run clear @s #rpgpve:gold_items{Gold:1b}

# Game States
execute if score #RPGPVEGameState Temp matches 1 run function rpgpve:game/preparation_wave/main
execute if score #RPGPVEGameState Temp matches 2 run function rpgpve:game/battle_wave/main

# Gold in XP Bar
execute as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/gold/exp_bar

# Kill Exp Orbs
execute in rpgpve:rpgpve_game run kill @e[type=experience_orb,distance=0..]

# Time
scoreboard players add #RPGPVETicks Temp 1
execute if score #RPGPVETicks Temp matches 20.. run function rpgpve:game/sidebar/time/second

# Items Abilities
execute as @a[scores={RightClick=1..}] at @s run function rpgpve:items/right_clicked

# Tnts
execute as @e[type=#rpgpve:projectile_ability_entities,tag=ExplosiveEntity] at @s run function rpgpve:items/explosives/main
#----------------------------------------#
