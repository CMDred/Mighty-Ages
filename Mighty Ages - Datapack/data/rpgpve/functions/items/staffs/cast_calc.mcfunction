execute store result score @s CastID run data get storage rpgpve:right_click Weapon.components."minecraft:custom_data".RPG.CastID

scoreboard players operation @s SkillPoint -= #ManaCost Dummy
scoreboard players operation #ManaCost Dummy *= #c10 Constant
scoreboard players operation @s SkillPointScaled -= #ManaCost Dummy

execute if score @s SkillPoint > @s MaxSkillPoint run scoreboard players operation @s SkillPoint = @s MaxSkillPoint
execute if score @s SkillPoint matches ..0 run scoreboard players set @s SkillPoint 0

execute store result score @s CastTime run data get storage rpgpve:right_click Weapon.components."minecraft:custom_data".RPG.CastTime

scoreboard players add @s CastTime 1