function rpgpve:items/staffs/calculate_damage

tag @s add Attacker

execute if score @s HasPiercing matches 1 run scoreboard players set #StaffPiercing Dummy 1

execute if score @s CastID matches 1 run function rpgpve:items/staffs/glowing_branch/cast
execute if score @s CastID matches 2 run function rpgpve:items/staffs/mage_stick/cast
execute if score @s CastID matches 3 run function rpgpve:items/staffs/sculk_staff/cast
execute if score @s CastID matches 4 run function rpgpve:items/staffs/void_warden_staff/cast
execute if score @s CastID matches 5 run function rpgpve:items/staffs/stormguard_staff/cast
execute if score @s CastID matches 6 run function rpgpve:items/staffs/stalk_of_truth/cast
execute if score @s CastID matches 7 run function rpgpve:items/staffs/catastrophe/cast
execute if score @s CastID matches 8 run function rpgpve:items/staffs/oblivion/cast

tag @e[type=#rpgpve:has_health_bar,tag=Affected] remove Affected
tag @s remove Attacker
scoreboard players reset #StaffPiercing