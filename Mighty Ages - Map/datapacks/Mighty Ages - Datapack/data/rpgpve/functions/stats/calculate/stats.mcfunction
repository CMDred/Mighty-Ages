# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#  "CMDRED" on Youtube ! #
#                                        #
# ====================================== #
#----------------------------------------#
execute if entity @s[tag=!IsInRPGPVEGame] run return 0

# setups
data remove storage rpgpve:inventory Inventory
data remove storage rpgpve:inventory MainHand
data remove storage rpgpve:inventory Offhand

data modify storage rpgpve:inventory Inventory set from entity @s Inventory
data modify storage rpgpve:inventory MainHand set from entity @s SelectedItem
data modify storage rpgpve:inventory Offhand set from storage rpgpve:inventory Inventory[{Slot:-106b}]

# default final stats to base stats

scoreboard players operation @s MaxHealth = @s BaseMaxHealth
scoreboard players operation @s MaxSkillPoint = @s BaseMaxSkillPoint
scoreboard players operation @s PhysicDefense = @s BasePhysicDefense
scoreboard players operation @s MagicDefense = @s BaseMagicDefense
scoreboard players operation @s PhysicDamage = @s BasePhysicDamage
scoreboard players operation @s MagicDamage = @s BaseMagicDamage

# get bonus stats
scoreboard players reset @s BonusMaxHealth
scoreboard players reset @s BonusMaxSkillPoint
scoreboard players reset @s BonusPhysicDefense
scoreboard players reset @s BonusMagicDefense
scoreboard players reset @s BonusPhysicDamage
scoreboard players reset @s BonusMagicDamage
function rpgpve:stats/grab_stats/armor/head
function rpgpve:stats/grab_stats/armor/chest
function rpgpve:stats/grab_stats/armor/legs
function rpgpve:stats/grab_stats/armor/feet

scoreboard players operation @s BonusMaxHealth += @s MaxHealthBonus
scoreboard players operation @s BonusMaxSkillPoint += @s MaxSkillPointBonus
execute if score @s Strength matches 1.. run scoreboard players add @s BonusPhysicDamage 60

execute if score @s AttractiveLanternTimer matches 1.. run scoreboard players add @s BonusPhysicDamage 20

# add bonus stats
scoreboard players operation @s MaxHealth += @s BonusMaxHealth
scoreboard players operation @s MaxSkillPoint += @s BonusMaxSkillPoint
scoreboard players operation @s PhysicDefense += @s BonusPhysicDefense
scoreboard players operation @s MagicDamage += @s BonusMagicDamage
scoreboard players operation @s PhysicDamage += @s BonusPhysicDamage
scoreboard players operation @s MagicDamage += @s BonusMagicDamage

# Health
execute if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
execute unless score @s Health matches -2147483648.. run scoreboard players operation @s Health = @s MaxHealth

# Skill point
execute if score @s SkillPoint > @s MaxSkillPoint run scoreboard players operation @s SkillPoint = @s MaxSkillPoint
execute unless score @s SkillPoint matches -2147483648.. run scoreboard players operation @s SkillPoint = @s MaxSkillPoint
execute if score @s SkillPoint matches ..0 run scoreboard players set @s SkillPoint 0

# Defense Swap
scoreboard players operation @s MagicDefense = @s PhysicDefense

scoreboard players operation #3rdDef Temp = @s PhysicDefense
scoreboard players operation #3rdDef Temp /= #c3 Constant

execute unless data storage rpgpve:inventory MainHand run scoreboard players operation @s PhysicDefense = @s MagicDefense
execute unless data storage rpgpve:inventory MainHand run scoreboard players operation @s MagicDefense = #3rdDef Temp
execute if data storage rpgpve:inventory MainHand.tag.RPG{DamageType:1} run scoreboard players operation @s PhysicDefense = @s MagicDefense
execute if data storage rpgpve:inventory MainHand.tag.RPG{DamageType:1} run scoreboard players operation @s MagicDefense = #3rdDef Temp
execute if data storage rpgpve:inventory MainHand.tag.RPG{DamageType:2} run scoreboard players operation @s MagicDefense = @s PhysicDefense
execute if data storage rpgpve:inventory MainHand.tag.RPG{DamageType:2} run scoreboard players operation @s PhysicDefense = #3rdDef Temp

execute if score @s PhysicRangedPurchased matches 1.. run function rpgpve:game/arrows/main

function rpgpve:game/stats_star/main

execute unless score @s Shield matches 1.. run clear @s shield
execute unless score @s TotemOfUndying matches 1.. run clear @s totem_of_undying

advancement revoke @s only rpgpve:stats/inventory_changed
#----------------------------------------#