# Get Data
function rpgpve:menus/pages/10/get_scores

#Click Events
execute if score #DontRunClickEvents Dummy matches 0 run function rpgpve:menus/pages/10/check_clickevents with storage rpgpve:menus ClickedItem.components."minecraft:custom_data"
# get data again if it was maybe changed
execute if score #DontRunClickEvents Dummy matches 0 run function rpgpve:menus/pages/10/get_scores

#Return item
execute if items entity @s container.* *[!minecraft:custom_data~{MenuItem:1b}] run function rpgpve:menus/return_item/check

#Change Page on Clickevent
execute unless score @s Menus.Page matches 10 run return run function rpgpve:menus/refresh_page

#Reset
loot replace entity @s container.0 loot rpgpve:menus/armorsmith/main
function rpgpve:items/get_armor_prices

function rpgpve:items/buy/armors/setup_item {Type:"Helmet", Slot: 10, ID: "helmet"}
function rpgpve:items/buy/armors/setup_item {Type:"Chestplate", Slot: 12, ID: "chestplate"}
function rpgpve:items/buy/armors/setup_item {Type:"Leggings", Slot: 14, ID: "leggings"}
function rpgpve:items/buy/armors/setup_item {Type:"Boots", Slot: 16, ID: "boots"}