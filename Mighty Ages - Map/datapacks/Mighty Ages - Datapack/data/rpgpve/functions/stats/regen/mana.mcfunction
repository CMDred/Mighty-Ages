# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#  "CMDRED" on Youtube ! #
#                                        #
# ====================================== #
#----------------------------------------#
scoreboard players operation #MaxSPScaled Temp = @s MaxSkillPoint
scoreboard players operation #MaxSPScaled Temp *= #c10 Constant
execute unless score @s SkillPointScaled matches 1.. run function rpgpve:stats/regen/get_mana_scaled

#tellraw @s ["",{"text":"Max SkillPoint * 10 = "},{"score":{"name": "#MaxSPScaled","objective": "Temp"}}]
#tellraw @s ["",{"text":"Current SkillPoint * 10 = "},{"score":{"name": "#CurrentSkillPointScaled","objective": "Temp"}}]

scoreboard players operation #Divisor Temp = @s SPRegenRatio
scoreboard players operation #Divisor Temp /= @s SPRegenBonus

#tellraw @s ["",{"text":"Divisor = "},{"score":{"name": "#Divisor","objective": "Temp"}}]

#tellraw @s ["",{"text":"Regen Scaled = "},{"score":{"name": "#MaxSPScaled","objective": "Temp"}},{"text":" / "},{"score":{"name": "#Divisor","objective": "Temp"}}]

execute store result score #RegenScaled Temp run scoreboard players operation #MaxSPScaled Temp /= #Divisor Temp

#tellraw @s ["",{"text":"Regen Scaled = "},{"score":{"name": "#RegenScaled","objective": "Temp"}}]

#tellraw @s ["",{"text":"New SkillPoint Scaled = "},{"score":{"name": "#CurrentSkillPointScaled","objective": "Temp"}},{"text":" + "},{"score":{"name": "#RegenScaled","objective": "Temp"}}]

scoreboard players operation @s SkillPointScaled += #RegenScaled Temp
#tellraw @s ["",{"text":"New SkillPoint Scaled = "},{"score":{"name": "#CurrentSkillPointScaled","objective": "Temp"}}]

scoreboard players operation @s SPRegen = #RegenScaled Temp

scoreboard players operation #LastSP Temp = @s SkillPoint
scoreboard players operation @s SkillPoint = @s SkillPointScaled
scoreboard players operation @s SkillPoint /= #c10 Constant
scoreboard players operation #SPDiff Temp = @s SkillPoint
scoreboard players operation #SPDiff Temp -= #LastSP Temp
#tellraw @s ["",{"text":"SP Difference = "},{"score":{"name": "#SPDiff","objective": "Temp"}}]

# Skill point
execute if score @s SkillPoint > @s MaxSkillPoint run scoreboard players operation @s SkillPoint = @s MaxSkillPoint
execute unless score @s SkillPoint matches -2147483648.. run scoreboard players operation @s SkillPoint = @s MaxSkillPoint
execute if score @s SkillPoint matches ..0 run scoreboard players set @s SkillPoint 0

scoreboard players set @s SPRegenTimer 1
#----------------------------------------#