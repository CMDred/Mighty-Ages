# Get Data
function rpgpve:menus/pages/11/get_scores

#Click Events
execute if score #DontRunClickEvents Dummy matches 0 run function rpgpve:menus/pages/11/check_clickevents with storage rpgpve:menus ClickedItem.components."minecraft:custom_data"
# get data again if it was maybe changed
execute if score #DontRunClickEvents Dummy matches 0 run function rpgpve:menus/pages/11/get_scores

#Return item
execute if items entity @s container.* *[!minecraft:custom_data~{MenuItem:1b}] run function rpgpve:menus/return_item/check

#Change Page on Clickevent
execute unless score @s Menus.Page matches 11 run return run function rpgpve:menus/refresh_page

#Reset
loot replace entity @s container.0 loot rpgpve:menus/mage/main
function rpgpve:items/get_weapon_prices