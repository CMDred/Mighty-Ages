#Get which player's menu you clicked (+ Put the item in a storage for  macro reference)
execute store success score #CursorClick Dummy if items entity @s player.cursor *[minecraft:custom_data~{MenuItem:1b}]
execute store success score #ItemCheck Dummy run clear @s *[minecraft:custom_data~{Clickable:1b}] 0

scoreboard players reset @s Menus.OpenID
execute if score #ItemCheck Dummy matches 1 run function rpgpve:menus/clicked_menu_item/get_item_data
execute if score #ItemCheck Dummy matches 0 unless score @s Menus.OpenID matches 1.. run function rpgpve:menus/clicked_menu_item/get_item_data
execute if score #ItemCheck Dummy matches 0 run scoreboard players set #DontRunClickEvents Dummy 1
execute if score #ItemCheck Dummy matches 0 if score #CursorClick Dummy matches 0 run function rpgpve:menus/clicked_menu_item/get_item_slot

#Run Clickevent
tag @s add MenuClicker
scoreboard players set @s Dummy 0
clear @s *[minecraft:custom_data~{MenuItem:1b}]
execute if score #ItemCheck Dummy matches 1 store success score #DontRunClickEvents Dummy unless score @s Menus.OpenID = @s PlayerID
scoreboard players operation #Search PlayerID = @s Menus.OpenID
execute as @e[type=minecraft:chest_minecart,predicate=rpgpve:same_player_id,limit=1] run function rpgpve:menus/refresh_page
tag @s remove MenuClicker