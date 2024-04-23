#Remove Tag
tag @s remove HoldingMenuItem
scoreboard players operation #Search PlayerID = @s PlayerID
execute as @e[type=minecraft:chest_minecart,predicate=rpgpve:same_player_id,limit=1] run function rpgpve:menus/minecart/kill
