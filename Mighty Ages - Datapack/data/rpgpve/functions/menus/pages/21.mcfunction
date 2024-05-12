#Click Events
execute if score #DontRunClickEvents Dummy matches 0 run function rpgpve:menus/pages/21/check_clickevents with storage rpgpve:menus ClickedItem.components."minecraft:custom_data"

#Return item
execute if items entity @s container.* *[!minecraft:custom_data~{MenuItem:1b}] run function rpgpve:menus/return_item/check

#Change Page on Clickevent
execute unless score @s Menus.Page matches 21 run return run function rpgpve:menus/refresh_page

#Reset
scoreboard players operation @s Dummy = @p HasAutoTelekinesis
loot replace entity @s container.0 loot rpgpve:menus/end_knight/blessings/main1
execute unless score #CurrentBattleWave Dummy matches 5.. run item replace entity @s container.19 with purple_stained_glass_pane
execute unless score #CurrentBattleWave Dummy matches 5.. run item modify entity @s container.19 rpgpve:menus/make_default_item

function rpgpve:items/buy/blessing/setup_item {Slot:10, Type:"GoldTelekinesis", WaveUnlocked:5}
function rpgpve:items/buy/blessing/setup_item {Slot:12, Type:"Piercing", WaveUnlocked:5}
function rpgpve:items/buy/blessing/setup_item {Slot:14, Type:"Speed", WaveUnlocked:10}
function rpgpve:items/buy/blessing/setup_item {Slot:16, Type:"FireResistance", WaveUnlocked:10}