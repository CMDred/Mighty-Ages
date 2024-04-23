#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
# Actionbar
function rpgpve:stats/actionbar/actionbar

# Slot Change
execute store result score #CurrentSlot Dummy run data get entity @s SelectedItemSlot
execute unless score #CurrentSlot Dummy = @s PreviousSlot run function rpgpve:changed_slot
scoreboard players operation @s PreviousSlot = #CurrentSlot Dummy

# Hurt
execute if entity @s[scores={DamageTaken=1..}] run function rpgpve:stats/damage/player/environmental_damage/check

# Crit Combo expire
execute if score @s CritComboExpireTimer matches 1.. run scoreboard players remove @s CritComboExpireTimer 1
execute if score @s CritComboExpireTimer matches 1 run function rpgpve:stats/calculate/crit_expire

# Manual Damage
execute if score @s ApplyMagicDamage matches 1.. run function rpgpve:stats/damage/manual/apply_magic
execute if score @s ApplyPhysicDamage matches 1.. run function rpgpve:stats/damage/manual/apply_physic

# Arrows Check
execute if score @s ShootBow matches 1.. as @e[type=#minecraft:arrows,tag=!GotStats,distance=..2,sort=nearest,limit=1] run function rpgpve:stats/arrow/player_stats
execute if score @s ShootCrossbow matches 1.. as @e[type=#minecraft:arrows,tag=!GotStats,distance=..2,sort=nearest,limit=1] run function rpgpve:stats/arrow/player_stats

# Items anti drop
function rpgpve:items/give_back_items/main
#----------------------------------------#
