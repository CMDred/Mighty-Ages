data remove storage rpgpve:item Item
data modify storage rpgpve:item Item set from entity @s SelectedItem

# High Tier weapons FX
execute store result score #Tier Dummy run data get storage rpgpve:item Item.components."minecraft:custom_data".RPG.Tier

execute if score #Tier Dummy matches 10 run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 0.3 2
execute if score #Tier Dummy matches 10 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 2
execute if score #Tier Dummy matches 11 run playsound item.firecharge.use master @s ~ ~ ~ 0.2 0.8
execute if score #Tier Dummy matches 12 run playsound item.firecharge.use master @s ~ ~ ~ 0.2 0.4
execute if score #Tier Dummy matches 12 run playsound block.fire.ambient master @s ~ ~ ~ 10 1

execute if score #Tier Dummy matches 10 run particle enchant ^-0.4 ^1.5 ^0.3 0.2 0.2 0.2 0.001 7 normal
execute if score #Tier Dummy matches 12 run particle flame ^-0.4 ^1.5 ^0.3 0.2 0.2 0.2 0.001 10 normal

scoreboard players operation @s TierHeld = #Tier Dummy

# Revealing Torch
execute if data storage rpgpve:item Item.components."minecraft:custom_data".RevealingTorch run scoreboard players add #RevealingTorch Dummy 1
execute if score #RevealingTorch Dummy matches 1.. unless data storage rpgpve:item Item.components."minecraft:custom_data".RevealingTorch run effect clear @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob] glowing
execute if score #RevealingTorch Dummy matches 1.. unless data storage rpgpve:item Item.components."minecraft:custom_data".RevealingTorch run scoreboard players remove #RevealingTorch Dummy 1

# stats
function rpgpve:stats/calculate/stats

execute if entity @s[tag=!NonEnchanted] unless data storage rpgpve:inventory MainHand run function rpgpve:items/magic_armor/disenchant
execute if entity @s[tag=!NonEnchanted] if data storage rpgpve:inventory MainHand.components."minecraft:custom_data".RPG{DamageType:1} run function rpgpve:items/magic_armor/disenchant
execute if entity @s[tag=!Enchanted] if data storage rpgpve:inventory MainHand.components."minecraft:custom_data".RPG{DamageType:2} run function rpgpve:items/magic_armor/enchant