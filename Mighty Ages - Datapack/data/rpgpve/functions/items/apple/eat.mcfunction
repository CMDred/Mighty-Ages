execute store result score #AppleType Dummy run data get entity @s SelectedItem.components."minecraft:custom_data".Type

execute if score @s AppleTimer matches 1.. if score #AppleType Dummy matches 1 run function rpgpve:items/apple/healing/eat_fail
execute unless score @s AppleTimer matches 1.. if score #AppleType Dummy matches 1 run function rpgpve:items/apple/healing/eat_success

execute if score @s AppleTimer matches 1.. if score #AppleType Dummy matches 2 run function rpgpve:items/apple/mending/eat_fail
execute unless score @s AppleTimer matches 1.. if score #AppleType Dummy matches 2 run function rpgpve:items/apple/mending/eat_success

advancement revoke @s only rpgpve:items/eat_apple