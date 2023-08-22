execute store result score #ManaCost Temp run data get storage rpgpve:right_click Weapon.tag.RPG.ManaCost

execute unless score @s SkillPoint >= #ManaCost Temp run function rpgpve:items/staffs/error

execute if score @s SkillPoint >= #ManaCost Temp run function rpgpve:items/staffs/start_cast

data remove storage rpgpve:right_click Weapon