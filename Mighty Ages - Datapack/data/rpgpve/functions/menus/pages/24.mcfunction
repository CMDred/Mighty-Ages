#Click Events
execute if score #DontRunClickEvents Dummy matches 0 run function rpgpve:menus/pages/24/check_clickevents with storage rpgpve:menus ClickedItem.components."minecraft:custom_data"

#Return item
execute if items entity @s container.* *[!minecraft:custom_data~{MenuItem:1b}] run function rpgpve:menus/return_item/check

#Change Page on Clickevent
execute unless score @s Menus.Page matches 24 run return run function rpgpve:menus/refresh_page

#Reset
loot replace entity @s container.0 loot rpgpve:menus/end_knight/gadgets/main1

function rpgpve:items/buy/blessing/setup_item {Slot:10, Type:"RevealingTorch", WaveUnlocked:5}
function rpgpve:items/buy/blessing/setup_item {Slot:12, Type:"AttractiveGauntlet", WaveUnlocked:10}
function rpgpve:items/buy/blessing/setup_item {Slot:14, Type:"RepellingGauntlet", WaveUnlocked:10}
function rpgpve:items/buy/blessing/setup_item {Slot:16, Type:"TotemOfUndying", WaveUnlocked:20}