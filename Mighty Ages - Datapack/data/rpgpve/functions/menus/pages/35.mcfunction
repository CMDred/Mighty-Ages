#Click Events
execute if score #DontRunClickEvents Dummy matches 0 run function rpgpve:menus/pages/35/check_clickevents with storage rpgpve:menus ClickedItem.components."minecraft:custom_data"

#Return item
execute if items entity @s container.* *[!minecraft:custom_data~{MenuItem:1b}] run function rpgpve:menus/return_item/check

#Change Page on Clickevent
execute unless score @s Menus.Page matches 35 run return run function rpgpve:menus/refresh_page

#Reset
loot replace entity @s container.0 loot rpgpve:menus/witch/main

function rpgpve:items/buy/other/setup_item {Slot:10, Type:"HealingApple", WaveUnlocked:0}
function rpgpve:items/buy/other/setup_item {Slot:12, Type:"HealingPotion", WaveUnlocked:2}
function rpgpve:items/buy/other/setup_item {Slot:14, Type:"MendingApple", WaveUnlocked:20}
function rpgpve:items/buy/other/setup_item {Slot:16, Type:"MendingPotion", WaveUnlocked:21}