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


scoreboard players set @s GoldTelekinesis 0
scoreboard players set @s ProjProt 0
scoreboard players set @s Speed 0
scoreboard players set @s FireRes 0
scoreboard players set @s Strength 0

scoreboard players set @s Shield 0
scoreboard players set @s TotemOfUndying 0

scoreboard players set @s GoldTelekinesisCost 100
scoreboard players set @s ProjProtCost 80
scoreboard players set @s SpeedCost 120
scoreboard players set @s FireResCost 190
scoreboard players set @s StrengthCost 700
scoreboard players set @s ShieldCost 200
scoreboard players set @s TotemOfUndyingCost 500
scoreboard players set @s GoldenAppleCost 90
scoreboard players set @s HealthPotionCost 110
scoreboard players set @s ManaPotionCost 110
scoreboard players set @s AttractLanternCost 120
scoreboard players set @s RepelLanternCost 120

scoreboard players set @s TinyTntCost 40
scoreboard players set @s DetonatorCost 125
scoreboard players set @s RocketCost 200


attribute @s generic.armor base set -1000

tag @s remove Eliminated

function rpgpve:stats/base_stats
#----------------------------------------#
