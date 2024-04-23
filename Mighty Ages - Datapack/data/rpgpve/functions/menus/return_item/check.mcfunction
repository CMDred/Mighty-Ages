#Return item
data modify storage rpgpve:return_items Items set from entity @s Items
data remove storage rpgpve:return_items Items[{components:{"minecraft:custom_data":{MenuItem:1b}}}]
execute store result score #ItemAmount Dummy if data storage rpgpve:return_items Items[]
data remove storage rpgpve:return_items Items[].Slot
execute as @a[tag=MenuClicker,limit=1] run function rpgpve:menus/return_item/return_item
scoreboard players reset #ItemAmount

#Remove items from chest minecart
loot replace entity @s container.0 loot rpgpve:menus/empty