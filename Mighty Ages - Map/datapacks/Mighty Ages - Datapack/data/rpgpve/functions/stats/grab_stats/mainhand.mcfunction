# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#  "CMDRED" on Youtube ! #
#                                        #
# ====================================== #
#----------------------------------------#
execute store result score #BonusStat Temp run data get storage rpgpve:inventory MainHand.tag.RPG.MaxHealth
scoreboard players operation @s BonusMaxHealth += #BonusStat Temp
execute store result score #BonusStat Temp run data get storage rpgpve:inventory MainHand.tag.RPG.MaxSkillPoint
scoreboard players operation @s BonusMaxSkillPoint += #BonusStat Temp
execute store result score #BonusStat Temp run data get storage rpgpve:inventory MainHand.tag.RPG.PhysicDefense
scoreboard players operation @s BonusPhysicDefense += #BonusStat Temp
execute store result score #BonusStat Temp run data get storage rpgpve:inventory MainHand.tag.RPG.MagicDefense
scoreboard players operation @s BonusMagicDefense += #BonusStat Temp
#----------------------------------------#