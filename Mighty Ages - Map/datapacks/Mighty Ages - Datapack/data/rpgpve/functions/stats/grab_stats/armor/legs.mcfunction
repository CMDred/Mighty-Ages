# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#  "CMDRED" on Youtube ! #
#                                        #
# ====================================== #
#----------------------------------------#
# get stats
execute store result score #BonusStat Temp run data get storage rpgpve:inventory Inventory[{Slot:101b}].tag.RPG.MaxHealth
scoreboard players operation @s BonusMaxHealth += #BonusStat Temp
execute store result score #BonusStat Temp run data get storage rpgpve:inventory Inventory[{Slot:101b}].tag.RPG.MaxSkillPoint
scoreboard players operation @s BonusMaxSkillPoint += #BonusStat Temp
execute store result score #BonusStat Temp run data get storage rpgpve:inventory Inventory[{Slot:101b}].tag.RPG.PhysicDefense
scoreboard players operation @s BonusPhysicDefense += #BonusStat Temp
execute store result score #BonusStat Temp run data get storage rpgpve:inventory Inventory[{Slot:101b}].tag.RPG.MagicDefense
scoreboard players operation @s BonusMagicDefense += #BonusStat Temp
execute store result score #BonusStat Temp run data get storage rpgpve:inventory Inventory[{Slot:101b}].tag.RPG.PhysicDamage
scoreboard players operation @s BonusPhysicDamage += #BonusStat Temp
execute store result score #BonusStat Temp run data get storage rpgpve:inventory Inventory[{Slot:101b}].tag.RPG.MagicDamage
scoreboard players operation @s BonusMagicDamage += #BonusStat Temp
#----------------------------------------#