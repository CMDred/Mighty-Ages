tag @e remove AlreadyHit

# Get weapon
data modify storage rpgpve:right_click Weapon set from entity @s SelectedItem

# staffs
execute if data storage rpgpve:right_click Weapon.components."minecraft:custom_data".RPG{ItemType:"Wand"} unless score @s CastCD matches 1.. unless score @s CastTime matches 1.. run function rpgpve:items/staffs/check_mana

# explosives
execute if data storage rpgpve:right_click Weapon.components."minecraft:custom_data".RPG{ItemType:"Explosive"} if entity @s[tag=NoExplosiveCooldown] run function rpgpve:items/explosives/list
execute if data storage rpgpve:right_click Weapon.components."minecraft:custom_data".RPG{ItemType:"Explosive"} if entity @s[tag=!NoExplosiveCooldown] unless score @s ExplosiveCooldown matches 1.. run function rpgpve:items/explosives/list
execute if data storage rpgpve:right_click Weapon.components."minecraft:custom_data".RPG{ItemType:"Explosive"} if entity @s[tag=!NoExplosiveCooldown] if score @s ExplosiveCooldown matches 1.. run function rpgpve:items/explosives/cooldown

# lobby items
execute if data storage rpgpve:right_click Weapon.components."minecraft:custom_data".LobbyItem run function rpgpve:lobby/items/click

# lanterns
execute if data storage rpgpve:right_click Weapon.components."minecraft:custom_data".Lantern run function rpgpve:items/lanterns/check

# reset
scoreboard players reset @s RightClick
tag @s remove Attacker
