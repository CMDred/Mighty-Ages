execute if score @s AppleTimer matches 1.. run scoreboard players remove @s AppleTimer 1
execute if score @s AppleTimer matches 1 run function rpgpve:items/apple/end

execute if score @s ThrowPotion matches 1.. run function rpgpve:items/potions/throw

execute if score @s CastTime matches 1.. run scoreboard players remove @s CastTime 1
execute if score @s CastTime matches 1 at @s run function rpgpve:items/staffs/cast_list
execute if score @s CastCD matches 1.. run scoreboard players remove @s CastCD 1

execute if score @s ExplosiveCooldown matches 1.. run scoreboard players remove @s ExplosiveCooldown 1

execute if score @s AttractiveLanternTimer matches 1.. run scoreboard players remove @s AttractiveLanternTimer 1

execute if score @s TierHeld matches 10 if score @s Walk matches 1.. rotated ~ 0 run particle end_rod ^ ^1 ^-1 0.2 0.6 0.2 0.001 4 normal
execute if score @s TierHeld matches 10 if score @s Sprint matches 1.. rotated ~ 0 run particle end_rod ^ ^1 ^-1 0.2 0.6 0.2 0.001 4 normal

execute if score @s TierHeld matches 12 if score @s Walk matches 1.. rotated ~ 0 run particle flame ^ ^1 ^-1 0.2 0.6 0.2 0.001 4 normal
execute if score @s TierHeld matches 12 if score @s Sprint matches 1.. rotated ~ 0 run particle flame ^ ^1 ^-1 0.2 0.6 0.2 0.001 4 normal

