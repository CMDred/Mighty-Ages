$execute if score #$(Type) Dummy matches 7.. run return run function rpgpve:items/buy/armors/max_item {ID: "$(ID)", Slot: $(Slot)}

data remove storage rpgpve:temporary ArmorSlot 
$data modify storage rpgpve:temporary ArmorSlot.Type set value $(Type)
$data modify storage rpgpve:temporary ArmorSlot.Slot set value $(Slot)
$data modify storage rpgpve:temporary ArmorSlot.ID set value $(ID)
$execute store result storage rpgpve:temporary ArmorSlot.Tier int 1 run scoreboard players get #$(Type) Dummy
execute store result storage rpgpve:temporary PlayerID int 1 run scoreboard players get @s PlayerID
function rpgpve:items/buy/armors/setup_item_2 with storage rpgpve:temporary ArmorSlot
