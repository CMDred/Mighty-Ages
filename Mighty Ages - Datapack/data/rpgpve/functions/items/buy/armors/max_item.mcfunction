$loot replace entity @s container.$(Slot) loot rpgpve:items/armors/tier6/tier6$(ID)
$item modify entity @s container.$(Slot) rpgpve:menus/buyable_item/set_bought
$item modify entity @s container.$(Slot) rpgpve:menus/make_menu_item
$item modify entity @s container.$(Slot) rpgpve:menus/make_clickable
$data modify entity @s Items[{Slot:$(Slot)b}].components."minecraft:custom_data".Slot set value $(Slot)b