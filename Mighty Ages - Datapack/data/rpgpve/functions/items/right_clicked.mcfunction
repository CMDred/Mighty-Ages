tag @e remove AlreadyHit

# Get weapon
data remove storage rpgpve:right_click Weapon
data modify storage rpgpve:right_click Weapon set from entity @s SelectedItem

# staffs
execute if data storage rpgpve:right_click Weapon.components."minecraft:custom_data".RPG{ItemType:"Wand"} unless score @s CastCD matches 1.. unless score @s CastTime matches 1.. run function rpgpve:items/staffs/check_mana

# explosives
execute if data storage rpgpve:right_click Weapon.components."minecraft:custom_data".ExplosiveType run function rpgpve:items/explosives/check

# gauntlets
execute if data storage rpgpve:right_click Weapon.components."minecraft:custom_data".GauntletType run function rpgpve:items/gauntlets/check

# other
execute if data storage rpgpve:right_click Weapon.components."minecraft:custom_data".Thorns run function rpgpve:items/thorns/check

# reset
scoreboard players reset @s RightClick
tag @s remove Attacker
