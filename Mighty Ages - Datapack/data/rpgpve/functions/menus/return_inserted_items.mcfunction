#Return Item (From Player Storage)
scoreboard players operation #Search PlayerID = @s PlayerID
execute store result storage rpgpve:temporary PlayerID int 1 run scoreboard players get #Search PlayerID
function utility:player_storage/load with storage rpgpve:temporary
data modify storage rpgpve:give_item Item set from storage rpgpve:player_storage data.Menus.InsertedItem
data remove storage rpgpve:player_storage data.Menus.InsertedItem
execute if score @s Menus.Page matches 1 run data remove storage rpgpve:player_storage data.Blacksmith
data remove storage rpgpve:give_item Item.components."minecraft:custom_data".MenuItem
data remove storage rpgpve:give_item Item.components."minecraft:custom_data".Clickable
data remove storage rpgpve:give_item Item.components."minecraft:custom_data".Slot
data remove storage rpgpve:give_item Item.components."minecraft:custom_data".PlayerID

execute as @a[predicate=rpgpve:same_player_id,limit=1] run function utility:give_item/to_inventory/from_storage

function utility:player_storage/save with storage rpgpve:temporary

scoreboard players set @s Dummy 0
tag @s remove ContainsInsertedItems
