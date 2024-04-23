#Prevent items from getting deleted
execute if entity @s[tag=ContainsInsertedItems] run function rpgpve:menus/return_inserted_items

#Kill
data remove entity @s Items
execute on vehicle run kill @s
kill @s
