#Click Events
execute if score #DontRunClickEvents Dummy matches 0 run function rpgpve:menus/pages/12/check_clickevents with storage rpgpve:menus ClickedItem.components."minecraft:custom_data"

#Return item
execute if items entity @s container.* *[!minecraft:custom_data~{MenuItem:1b}] run function rpgpve:menus/return_item/check

#Change Page on Clickevent
execute unless score @s Menus.Page matches 12 run return run function rpgpve:menus/refresh_page

#Reset
loot replace entity @s container.0 loot rpgpve:menus/mage/sceptrepage1
function rpgpve:items/get_weapon_prices
scoreboard players operation #CurrentTierPurchased Dummy = @p[tag=MenuOwner] MagicMeleePurchased

# Tier 1
function rpgpve:items/buy/weapons/setup_item {Type:"MagicMelee",Tier:1,Slot:10}

# Tier 2
function rpgpve:items/buy/weapons/setup_item {Type:"MagicMelee",Tier:2,Slot:12}

# Tier 3
function rpgpve:items/buy/weapons/setup_item {Type:"MagicMelee",Tier:3,Slot:14}

# Tier 3
function rpgpve:items/buy/weapons/setup_item {Type:"MagicMelee",Tier:4,Slot:16}