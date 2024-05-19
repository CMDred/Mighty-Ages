#Click Events
execute if score #DontRunClickEvents Dummy matches 0 run function rpgpve:menus/pages/37/check_clickevents with storage rpgpve:menus ClickedItem.components."minecraft:custom_data"

#Return item
execute if items entity @s container.* *[!minecraft:custom_data~{MenuItem:1b}] run function rpgpve:menus/return_item/check

#Change Page on Clickevent
execute unless score @s Menus.Page matches 37 run return run function rpgpve:menus/refresh_page

#Reset
loot replace entity @s container.0 loot rpgpve:menus/golem/main

function rpgpve:items/buy/other/setup_item {Slot:10, Type:"Shield", WaveUnlocked:5}
function rpgpve:items/buy/other/setup_item {Slot:12, Type:"WallBall", WaveUnlocked:5}
function rpgpve:items/buy/other/setup_item {Slot:14, Type:"Thorns", WaveUnlocked:10}
function rpgpve:items/buy/other/setup_item {Slot:16, Type:"Barrier", WaveUnlocked:20}