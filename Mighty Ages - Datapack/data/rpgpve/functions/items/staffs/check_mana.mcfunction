execute store result score #ManaCost Dummy run data get storage rpgpve:right_click Weapon.components."minecraft:custom_data".RPG.ManaCost

execute unless score @s SkillPoint >= #ManaCost Dummy run function rpgpve:items/staffs/error

execute if score @s SkillPoint >= #ManaCost Dummy run function rpgpve:items/staffs/start_cast

data remove storage rpgpve:right_click Weapon