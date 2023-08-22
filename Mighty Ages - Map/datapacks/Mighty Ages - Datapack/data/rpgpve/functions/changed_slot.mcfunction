# High Tier weapons FX
execute store result score #Tier Temp run data get entity @s SelectedItem.tag.RPG.Tier

execute if score #Tier Temp matches 10 run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 0.3 2
execute if score #Tier Temp matches 10 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 2
execute if score #Tier Temp matches 11 run playsound item.firecharge.use master @s ~ ~ ~ 0.2 0.8
execute if score #Tier Temp matches 12 run playsound item.firecharge.use master @s ~ ~ ~ 0.2 0.4
execute if score #Tier Temp matches 12 run playsound block.fire.ambient master @s ~ ~ ~ 10 1

execute if score #Tier Temp matches 10 run particle enchant ^-0.4 ^1.5 ^0.3 0.2 0.2 0.2 0.001 7 normal
execute if score #Tier Temp matches 12 run particle flame ^-0.4 ^1.5 ^0.3 0.2 0.2 0.2 0.001 10 normal

scoreboard players operation @s TierHeld = #Tier Temp

# stats
function rpgpve:stats/calculate/stats

execute if entity @s[tag=!NonEnchanted] unless data storage rpgpve:inventory MainHand run function rpgpve:items/magic_armor/disenchant
execute if entity @s[tag=!NonEnchanted] if data storage rpgpve:inventory MainHand.tag.RPG{DamageType:1} run function rpgpve:items/magic_armor/disenchant
execute if entity @s[tag=!Enchanted] if data storage rpgpve:inventory MainHand.tag.RPG{DamageType:2} run function rpgpve:items/magic_armor/enchant