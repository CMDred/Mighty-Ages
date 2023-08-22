# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#  "CMDRED" on Youtube ! #
#                                        #
# ====================================== #
#--------------SCEPTRE MANA--------------#
execute if score @s SkillPoint >= @s MaxSkillPoint run scoreboard players operation #ManaCost Temp *= #c3 Constant

scoreboard players operation @s SkillPoint -= #ManaCost Temp

scoreboard players operation #ManaCost Temp *= #c10 Constant
scoreboard players operation @s SkillPointScaled -= #ManaCost Temp

execute if score @s SkillPoint > @s MaxSkillPoint run scoreboard players operation @s SkillPoint = @s MaxSkillPoint
execute unless score @s SkillPoint matches -2147483648.. run scoreboard players operation @s SkillPoint = @s MaxSkillPoint
execute if score @s SkillPoint matches ..0 run scoreboard players set @s SkillPoint 0
#----------------------------------------#