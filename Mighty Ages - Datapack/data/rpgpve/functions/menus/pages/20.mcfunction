#Click Events
execute if score #DontRunClickEvents Dummy matches 0 run function rpgpve:menus/pages/20/check_clickevents with storage rpgpve:menus ClickedItem.components."minecraft:custom_data"

#Return item
execute if items entity @s container.* *[!minecraft:custom_data~{MenuItem:1b}] run function rpgpve:menus/return_item/check

#Change Page on Clickevent
execute unless score @s Menus.Page matches 20 run return run function rpgpve:menus/refresh_page

#Reset
loot replace entity @s container.0 loot rpgpve:menus/mage/sceptrepage3
function rpgpve:items/get_weapon_prices