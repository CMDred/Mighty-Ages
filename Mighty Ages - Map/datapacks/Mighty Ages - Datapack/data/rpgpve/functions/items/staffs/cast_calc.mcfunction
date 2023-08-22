execute store result score @s CastID run data get storage rpgpve:right_click Weapon.tag.RPG.CastID

scoreboard players operation @s SkillPoint -= #ManaCost Temp
scoreboard players operation #ManaCost Temp *= #c10 Constant
scoreboard players operation @s SkillPointScaled -= #ManaCost Temp

execute if score @s SkillPoint > @s MaxSkillPoint run scoreboard players operation @s SkillPoint = @s MaxSkillPoint
execute if score @s SkillPoint matches ..0 run scoreboard players set @s SkillPoint 0

execute store result score @s CastTime run data get storage rpgpve:right_click Weapon.tag.RPG.CastTime
execute store result score @s ArrowDamage run data get storage rpgpve:right_click Weapon.tag.RPG.Damage

scoreboard players add @s CastTime 1