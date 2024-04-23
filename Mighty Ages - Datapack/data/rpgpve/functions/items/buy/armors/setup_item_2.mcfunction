$scoreboard players operation #Cost Dummy = #$(Type)$(Tier)Cost Dummy

$loot replace entity @s container.$(Slot) loot rpgpve:items/armors/tier$(Tier)/tier$(Tier)$(ID)
$item modify entity @s container.$(Slot) rpgpve:menus/buyable_item/set_buyable
$item modify entity @s container.$(Slot) rpgpve:menus/make_menu_item
$item modify entity @s container.$(Slot) rpgpve:menus/make_clickable
$data modify entity @s Items[{Slot:$(Slot)b}].components."minecraft:custom_data".Slot set value $(Slot)b
