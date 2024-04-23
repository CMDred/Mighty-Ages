#========================================#
#          Made by TheCarotte            #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players operation #DefPhy Dummy = @s PhysicDefense

scoreboard players operation #DefMag Dummy = @s MagicDefense

scoreboard players operation #Defense Dummy = @s PhysicDefense
function rpgpve:stats/calculate/damage_reduction
scoreboard players operation #PhyRedUnit Dummy = @s DamageReduction
scoreboard players operation #PhyRedDeci Dummy = @s DamageReduction
scoreboard players operation #PhyRedUnit Dummy /= #c10 Constant
scoreboard players operation #PhyRedDeci Dummy %= #c10 Constant
scoreboard players operation @s Dummy = #PhyRedDeci Dummy

scoreboard players operation #Defense Dummy = @s MagicDefense
function rpgpve:stats/calculate/damage_reduction
scoreboard players operation #MagRedUnit Dummy = @s DamageReduction
scoreboard players operation #MagRedDeci Dummy = @s DamageReduction
scoreboard players operation #MagRedUnit Dummy /= #c10 Constant
scoreboard players operation #MagRedDeci Dummy %= #c10 Constant
scoreboard players operation @s Date = #MagRedDeci Dummy

scoreboard players operation #HPRegenUnit Dummy = @s HealthRegen
scoreboard players operation #HPRegenDeci Dummy = @s HealthRegen
scoreboard players operation #HPRegenUnit Dummy /= #c10 Constant
scoreboard players operation #HPRegenDeci Dummy %= #c10 Constant
scoreboard players operation @s NPC_Skin = #HPRegenDeci Dummy

scoreboard players operation #SPRegenUnit Dummy = @s SPRegen
scoreboard players operation #SPRegenDeci Dummy = @s SPRegen
scoreboard players operation #SPRegenUnit Dummy /= #c10 Constant
scoreboard players operation #SPRegenDeci Dummy %= #c10 Constant
scoreboard players operation @s Constant = #SPRegenDeci Dummy

scoreboard players operation @s AbsMath = #CurrentBattleWave Dummy

execute if data entity @s Inventory[{Slot:35b}] unless data entity @s Inventory[{Slot:35b,id:"minecraft:nether_star"}] at @s run function rpgpve:game/stats_star/give_other_item_back
loot replace entity @s inventory.26 loot rpgpve:items/stats_star
execute store result score #StarCount Dummy run clear @s nether_star 0
execute if score #StarCount Dummy matches 2.. run clear @s nether_star
execute if score #StarCount Dummy matches 2.. run loot replace entity @s inventory.26 loot rpgpve:items/stats_star
#----------------------------------------#
