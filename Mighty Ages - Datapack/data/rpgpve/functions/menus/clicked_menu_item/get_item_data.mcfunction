#Get which player's menu you clicked (+ Put the item in a storage for  macro reference)
execute if score #CursorClick Dummy matches 1 in overworld run setblock 700000 1 700000 yellow_shulker_box
execute if score #CursorClick Dummy matches 1 in overworld run item replace block 700000 1 700000 container.0 from entity @s player.cursor
execute if score #CursorClick Dummy matches 1 in overworld run data modify storage rpgpve:menus ClickedItem set from block 700000 1 700000 Items[0]
execute if score #CursorClick Dummy matches 1 in overworld run item replace block 700000 1 700000 container.0 with minecraft:air
execute if score #CursorClick Dummy matches 0 run data modify storage rpgpve:menus ClickedItem set from entity @s Inventory[{components:{"minecraft:custom_data":{MenuItem:1b}}}]
execute unless score @s Menus.OpenID matches 1.. store result score @s Menus.OpenID run data get storage rpgpve:menus ClickedItem.components."minecraft:custom_data".PlayerID