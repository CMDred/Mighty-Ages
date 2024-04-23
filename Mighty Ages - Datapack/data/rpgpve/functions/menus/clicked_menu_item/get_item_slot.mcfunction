#Get the slot of the item if it was hotkeyed (So that a potential inserted item can be returned into the correct slot)
execute if items entity @s hotbar.8 *[minecraft:custom_data~{MenuItem:1b}] run return run data modify storage rpgpve:menus ClickedItem.Slot set value 8b
execute if items entity @s hotbar.7 *[minecraft:custom_data~{MenuItem:1b}] run return run data modify storage rpgpve:menus ClickedItem.Slot set value 7b
execute if items entity @s hotbar.6 *[minecraft:custom_data~{MenuItem:1b}] run return run data modify storage rpgpve:menus ClickedItem.Slot set value 6b
execute if items entity @s hotbar.5 *[minecraft:custom_data~{MenuItem:1b}] run return run data modify storage rpgpve:menus ClickedItem.Slot set value 5b
execute if items entity @s hotbar.4 *[minecraft:custom_data~{MenuItem:1b}] run return run data modify storage rpgpve:menus ClickedItem.Slot set value 4b
execute if items entity @s hotbar.3 *[minecraft:custom_data~{MenuItem:1b}] run return run data modify storage rpgpve:menus ClickedItem.Slot set value 3b
execute if items entity @s hotbar.2 *[minecraft:custom_data~{MenuItem:1b}] run return run data modify storage rpgpve:menus ClickedItem.Slot set value 2b
execute if items entity @s hotbar.1 *[minecraft:custom_data~{MenuItem:1b}] run return run data modify storage rpgpve:menus ClickedItem.Slot set value 1b
data modify storage rpgpve:menus ClickedItem.Slot set value 0b