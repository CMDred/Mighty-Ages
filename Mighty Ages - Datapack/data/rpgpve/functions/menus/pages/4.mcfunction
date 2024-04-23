#Click Events
execute if score #DontRunClickEvents Dummy matches 0 run function rpgpve:menus/pages/4/check_clickevents with storage rpgpve:menus ClickedItem.components."minecraft:custom_data"

#Return item
execute if items entity @s container.* *[!minecraft:custom_data~{MenuItem:1b}] run function rpgpve:menus/return_item/check

#Change Page on Clickevent
execute unless score @s Menus.Page matches 4 run return run function rpgpve:menus/refresh_page

#Reset
loot replace entity @s container.0 loot rpgpve:menus/weaponsmith/swordpage3
function rpgpve:items/get_weapon_prices

scoreboard players operation #CurrentTierPurchased Dummy = @p[tag=MenuOwner] PhysicMeleePurchased

# Tier 9
function rpgpve:items/buy/weapons/setup_item {Type:"PhysicMelee",Tier:9,Slot:10}

# Tier 10
function rpgpve:items/buy/weapons/setup_item {Type:"PhysicMelee",Tier:10,Slot:12}

# Tier 11
function rpgpve:items/buy/weapons/setup_item {Type:"PhysicMelee",Tier:11,Slot:14}

# Tier 12
function rpgpve:items/buy/weapons/setup_item {Type:"PhysicMelee",Tier:12,Slot:16}