# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#          "CMDRED" on Youtube !         #
#                                        #
# ====================================== #
#----------------------------------------#
scoreboard players operation #MaxSPScaled Dummy = @s MaxSkillPoint
scoreboard players operation #MaxSPScaled Dummy *= #c10 Constant
execute unless score @s SkillPointScaled matches 1.. run function rpgpve:stats/regen/get_mana_scaled

#tellraw @s ["",{"text":"Max SkillPoint * 10 = "},{"score":{"name": "#MaxSPScaled","objective": "Dummy"}}]
#tellraw @s ["",{"text":"Current SkillPoint * 10 = "},{"score":{"name": "#CurrentSkillPointScaled","objective": "Dummy"}}]

scoreboard players operation #Divisor Dummy = @s SPRegenRatio
scoreboard players operation #Divisor Dummy /= @s SPRegenBonus

#tellraw @s ["",{"text":"Divisor = "},{"score":{"name": "#Divisor","objective": "Dummy"}}]

#tellraw @s ["",{"text":"Regen Scaled = "},{"score":{"name": "#MaxSPScaled","objective": "Dummy"}},{"text":" / "},{"score":{"name": "#Divisor","objective": "Dummy"}}]

execute store result score #RegenScaled Dummy run scoreboard players operation #MaxSPScaled Dummy /= #Divisor Dummy

#tellraw @s ["",{"text":"Regen Scaled = "},{"score":{"name": "#RegenScaled","objective": "Dummy"}}]

#tellraw @s ["",{"text":"New SkillPoint Scaled = "},{"score":{"name": "#CurrentSkillPointScaled","objective": "Dummy"}},{"text":" + "},{"score":{"name": "#RegenScaled","objective": "Dummy"}}]

scoreboard players operation @s SkillPointScaled += #RegenScaled Dummy
#tellraw @s ["",{"text":"New SkillPoint Scaled = "},{"score":{"name": "#CurrentSkillPointScaled","objective": "Dummy"}}]

scoreboard players operation @s SPRegen = #RegenScaled Dummy

scoreboard players operation #LastSP Dummy = @s SkillPoint
scoreboard players operation @s SkillPoint = @s SkillPointScaled
scoreboard players operation @s SkillPoint /= #c10 Constant
scoreboard players operation #SPDiff Dummy = @s SkillPoint
scoreboard players operation #SPDiff Dummy -= #LastSP Dummy
#tellraw @s ["",{"text":"SP Difference = "},{"score":{"name": "#SPDiff","objective": "Dummy"}}]

# Skill point
execute if score @s SkillPoint > @s MaxSkillPoint run scoreboard players operation @s SkillPoint = @s MaxSkillPoint
execute unless score @s SkillPoint matches -2147483648.. run scoreboard players operation @s SkillPoint = @s MaxSkillPoint
execute if score @s SkillPoint matches ..0 run scoreboard players set @s SkillPoint 0


scoreboard players set @s SPRegenTimer 20
#----------------------------------------#