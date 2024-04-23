tag @s add HoldingMenuItem
scoreboard players reset @s Menus.LookingAtID
scoreboard players operation #Search PlayerID = @s PlayerID
execute store result score #CopyToMinecart Menus.Page run data get entity @s SelectedItem.components."minecraft:custom_data".MenuPage
execute as @e[type=minecraft:chest_minecart,predicate=rpgpve:same_player_id,limit=1] run function rpgpve:menus/minecart/kill
execute at @s anchored eyes positioned ^ ^ ^0.7 run summon minecraft:block_display ~ ~-0.32 ~ {Tags:["MenuMinecart","Dummy"],Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Team:"NoCollision",CustomName:'{"text":"Menu"}',CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Tags:["MenuMinecart","Registered","Dummy"]}]}

tag @s add ThisPlayer
execute as @e[type=minecraft:block_display,tag=Dummy,limit=1] run function rpgpve:menus/minecart/setup_block_display
tag @s remove ThisPlayer
