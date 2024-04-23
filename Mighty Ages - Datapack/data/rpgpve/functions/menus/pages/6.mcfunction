#Click Events
execute if score #DontRunClickEvents Dummy matches 0 run function rpgpve:menus/pages/6/check_clickevents with storage rpgpve:menus ClickedItem.components."minecraft:custom_data"

#Return item
execute if items entity @s container.* *[!minecraft:custom_data~{MenuItem:1b}] run function rpgpve:menus/return_item/check

#Change Page on Clickevent
execute unless score @s Menus.Page matches 6 run return run function rpgpve:menus/refresh_page

#Reset
loot replace entity @s container.0 loot rpgpve:menus/weaponsmith/bowpage2
function rpgpve:items/get_weapon_prices

scoreboard players operation #CurrentTierPurchased Dummy = @p[tag=MenuOwner] PhysicRangedPurchased

# Tier 5
function rpgpve:items/buy/weapons/setup_item {Type:"PhysicRanged",Tier:5,Slot:10}

# Tier 6
function rpgpve:items/buy/weapons/setup_item {Type:"PhysicRanged",Tier:6,Slot:12}

# Tier 7
function rpgpve:items/buy/weapons/setup_item {Type:"PhysicRanged",Tier:7,Slot:14}

# Tier 8
function rpgpve:items/buy/weapons/setup_item {Type:"PhysicRanged",Tier:8,Slot:16}