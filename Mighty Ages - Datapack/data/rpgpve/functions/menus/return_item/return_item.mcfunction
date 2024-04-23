#Return items
data modify storage rpgpve:give_item Item set from storage rpgpve:return_items Items[-1]
data remove storage rpgpve:return_items Items[-1]
execute if score #CursorClick Dummy matches 1 run function utility:give_item/to_cursor/from_storage
execute if score #CursorClick Dummy matches 0 run function utility:give_item/to_inventory/to_slot/from_storage with storage rpgpve:menus ClickedItem
scoreboard players remove #ItemAmount Dummy 1
execute if score #ItemAmount Dummy matches 1.. run function rpgpve:menus/return_item/return_item