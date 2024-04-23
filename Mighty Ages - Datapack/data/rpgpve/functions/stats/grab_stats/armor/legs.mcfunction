# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#          "CMDRED" on Youtube !         #
#                                        #
# ====================================== #
#----------------------------------------#
# get stats
execute store result score #BonusStat Dummy run data get storage rpgpve:inventory Inventory[{Slot:101b}].components."minecraft:custom_data".RPG.MaxHealth
scoreboard players operation @s BonusMaxHealth += #BonusStat Dummy
execute store result score #BonusStat Dummy run data get storage rpgpve:inventory Inventory[{Slot:101b}].components."minecraft:custom_data".RPG.MaxSkillPoint
scoreboard players operation @s BonusMaxSkillPoint += #BonusStat Dummy
execute store result score #BonusStat Dummy run data get storage rpgpve:inventory Inventory[{Slot:101b}].components."minecraft:custom_data".RPG.PhysicDefense
scoreboard players operation @s BonusPhysicDefense += #BonusStat Dummy
execute store result score #BonusStat Dummy run data get storage rpgpve:inventory Inventory[{Slot:101b}].components."minecraft:custom_data".RPG.MagicDefense
scoreboard players operation @s BonusMagicDefense += #BonusStat Dummy
execute store result score #BonusStat Dummy run data get storage rpgpve:inventory Inventory[{Slot:101b}].components."minecraft:custom_data".RPG.PhysicDamage
scoreboard players operation @s BonusPhysicDamage += #BonusStat Dummy
execute store result score #BonusStat Dummy run data get storage rpgpve:inventory Inventory[{Slot:101b}].components."minecraft:custom_data".RPG.MagicDamage
scoreboard players operation @s BonusMagicDamage += #BonusStat Dummy
#----------------------------------------#