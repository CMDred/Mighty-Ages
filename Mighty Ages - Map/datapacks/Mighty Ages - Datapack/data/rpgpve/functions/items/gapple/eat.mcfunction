execute if score @s GappleTimer matches 1.. run function rpgpve:items/gapple/eat_fail
execute unless score @s GappleTimer matches 1.. run function rpgpve:items/gapple/eat_success
scoreboard players reset @s EatGapple