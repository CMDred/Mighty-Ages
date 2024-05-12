execute if score @s Menus.Page matches 1 run data modify entity @s CustomName set value '{"text":"Weaponsmith"}'
execute if score @s Menus.Page matches 10 run data modify entity @s CustomName set value '{"text":"Armorsmith"}'
execute if score @s Menus.Page matches 20 run data modify entity @s CustomName set value '{"text":"End Knight"}'
execute if score @s Menus.Page matches 35 run data modify entity @s CustomName set value '{"text":"Witch"}'

scoreboard players set #DontRunClickEvents Dummy 1
function rpgpve:menus/refresh_page