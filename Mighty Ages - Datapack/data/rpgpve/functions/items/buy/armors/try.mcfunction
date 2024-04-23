data remove storage rpgpve:temporary ArmorSlot 
$data modify storage rpgpve:temporary ArmorSlot.Type set value $(Type)
$data modify storage rpgpve:temporary ArmorSlot.Slot set value $(Slot)
$data modify storage rpgpve:temporary ArmorSlot.ID set value $(ID)
$execute store result storage rpgpve:temporary ArmorSlot.Tier int 1 run scoreboard players get #$(Type) Dummy
function rpgpve:items/buy/armors/try2 with storage rpgpve:temporary ArmorSlot