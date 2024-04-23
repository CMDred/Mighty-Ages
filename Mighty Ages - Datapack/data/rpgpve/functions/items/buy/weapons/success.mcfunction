$scoreboard players set @s $(Type)Purchased $(Tier)
$loot spawn ~ ~ ~ loot rpgpve:items/weapons/$(Item)s/tier$(Tier)$(Item)
playsound block.note_block.pling master @s ~ ~ ~ .5 2
tellraw @s ["",{"text":"You bought ","color":"gray"},{"nbt":"Item.components.'minecraft:item_name'","interpret": true,"entity": "@e[type=item,distance=...8,nbt={Age:0s},limit=1]"},{"text":"!"}]
data modify entity @e[type=item,distance=...8,nbt={Age:0s},limit=1] PickupDelay set value 1
clear @s *[minecraft:custom_data~{PreventDrop:1b}]
function rpgpve:game/battle_wave/gold/remove_gold