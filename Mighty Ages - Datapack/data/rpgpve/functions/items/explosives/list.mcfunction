execute if data storage rpgpve:right_click Weapon.components."minecraft:custom_data".RPG{Ability:"TinyTNT"} run function rpgpve:items/explosives/tiny_tnt/start
execute if data storage rpgpve:right_click Weapon.components."minecraft:custom_data".RPG{Ability:"Detonator"} run function rpgpve:items/explosives/detonator/start
execute if data storage rpgpve:right_click Weapon.components."minecraft:custom_data".RPG{Ability:"Rocket"} run function rpgpve:items/explosives/rocket/start

item replace entity @s[gamemode=!creative] weapon.mainhand with air

scoreboard players set @s ExplosiveCooldown 101

data remove storage rpgpve:right_click Weapon