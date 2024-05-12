#========================================#
#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------CREATE INSTANCE-------------#
scoreboard players set @s GoldGot 0
scoreboard players set @s TotalGold 0
scoreboard players set @s PhysicMeleePurchased 1
scoreboard players set @s PhysicRangedPurchased 0
scoreboard players set @s MagicMeleePurchased 0
scoreboard players set @s MagicRangedPurchased 0

scoreboard players set @s HelmetTierPurchased 0
scoreboard players set @s ChestplateTierPurchased 0
scoreboard players set @s LeggingsTierPurchased 0
scoreboard players set @s BootsTierPurchased 0

scoreboard players set @s TotalKills 0


scoreboard players set @s MaxHealthUpgradeTier 0
scoreboard players set @s HealthRegenUpgradeTier 0

scoreboard players set @s MaxSkillPointUpgradeTier 0
scoreboard players set @s SkillPointRegenUpgradeTier 0

scoreboard players set @s HPRegenBonus 1
scoreboard players set @s MaxHealthBonus 0

scoreboard players set @s SPRegenBonus 1
scoreboard players set @s MaxSkillPointBonus 0

scoreboard players reset @s HasAutoTelekinesis
function rpgpve:items/buy/increase_prices/base_prices

xp set @s 0 levels
xp set @s 0 points

tag @s remove Eliminated

clear @s
#----------------------------------------#
