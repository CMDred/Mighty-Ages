#========================================#
#          Made by TheCarotte            #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players operation #DefPhy Temp = @s PhysicDefense

scoreboard players operation #DefMag Temp = @s MagicDefense

scoreboard players operation #Defense Temp = @s PhysicDefense
function rpgpve:stats/calculate/damage_reduction
scoreboard players operation #PhyRedUnit Temp = @s DamageReduction
scoreboard players operation #PhyRedDeci Temp = @s DamageReduction
scoreboard players operation #PhyRedUnit Temp /= #c10 Constant
scoreboard players operation #PhyRedDeci Temp %= #c10 Constant
scoreboard players operation @s Temp = #PhyRedDeci Temp

scoreboard players operation #Defense Temp = @s MagicDefense
function rpgpve:stats/calculate/damage_reduction
scoreboard players operation #MagRedUnit Temp = @s DamageReduction
scoreboard players operation #MagRedDeci Temp = @s DamageReduction
scoreboard players operation #MagRedUnit Temp /= #c10 Constant
scoreboard players operation #MagRedDeci Temp %= #c10 Constant
scoreboard players operation @s Date = #MagRedDeci Temp

scoreboard players operation #HPRegenUnit Temp = @s HealthRegen
scoreboard players operation #HPRegenDeci Temp = @s HealthRegen
scoreboard players operation #HPRegenUnit Temp /= #c10 Constant
scoreboard players operation #HPRegenDeci Temp %= #c10 Constant
scoreboard players operation @s NPC_Skin = #HPRegenDeci Temp

scoreboard players operation #SPRegenUnit Temp = @s SPRegen
scoreboard players operation #SPRegenDeci Temp = @s SPRegen
scoreboard players operation #SPRegenUnit Temp /= #c10 Constant
scoreboard players operation #SPRegenDeci Temp %= #c10 Constant
scoreboard players operation @s Constant = #SPRegenDeci Temp

execute if data entity @s Inventory[{Slot:35b}] unless data entity @s Inventory[{Slot:35b,id:"minecraft:nether_star"}] at @s run function rpgpve:game/stats_star/give_other_item_back
loot replace entity @s inventory.26 loot rpgpve:items/stats_star
execute store result score #StarCount Temp run clear @s nether_star 0
execute if score #StarCount Temp matches 2.. run clear @s nether_star
execute if score #StarCount Temp matches 2.. run loot replace entity @s inventory.26 loot rpgpve:items/stats_star
#----------------------------------------#
