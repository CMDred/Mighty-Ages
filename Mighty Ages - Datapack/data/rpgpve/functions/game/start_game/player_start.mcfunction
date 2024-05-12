#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------START GAME---------------#
function rpgpve:game/give_start_gear
scoreboard players set @s GoldGot 0
scoreboard players set @s TotalGold 0
scoreboard players set @s PhysicMeleePurchased 1
scoreboard players set @s PhysicRangedPurchased 0
scoreboard players set @s MagicMeleePurchased 0
scoreboard players set @s MagicRangedPurchased 0

scoreboard players set @s HealthScaled 1000
scoreboard players set @s SkillPoint 1000

scoreboard players set @s BowBountyDistance 50

scoreboard players set @s HelmetTierPurchased 0
scoreboard players set @s ChestplateTierPurchased 0
scoreboard players set @s LeggingsTierPurchased 0
scoreboard players set @s BootsTierPurchased 0
execute if entity @s[team=] unless entity @a[tag=IsInRPGPVEGame,team=red] run team join red @s 
execute if entity @s[team=] unless entity @a[tag=IsInRPGPVEGame,team=blue] run team join blue @s 

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

attribute @s generic.armor base set -1000

tag @s remove Eliminated

function rpgpve:stats/base_stats
#----------------------------------------#
