#Refresh Menu
scoreboard players set #DontRunClickEvents Dummy 1
execute on origin store success score #HasOpenID Dummy if score @s Menus.OpenID matches 1..
execute if score #HasOpenID Dummy matches 1 on origin run scoreboard players operation #Search PlayerID = @s Menus.OpenID
execute if score #HasOpenID Dummy matches 0 store result score #Search PlayerID run data get entity @s Item.components."minecraft:custom_data".PlayerID
execute if score #HasOpenID Dummy matches 0 on origin run scoreboard players operation @s Menus.OpenID = #Search PlayerID
execute as @e[type=minecraft:chest_minecart,predicate=rpgpve:same_player_id,limit=1] run function rpgpve:menus/refresh_page

kill @s