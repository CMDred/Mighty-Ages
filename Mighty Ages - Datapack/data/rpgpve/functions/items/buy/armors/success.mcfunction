$scoreboard players set @s $(Type)TierPurchased $(Tier)
$loot replace entity @s armor.$(Slot) loot rpgpve:items/armors/tier$(Tier)/tier$(Tier)$(ID)
playsound block.note_block.pling master @s ~ ~ ~ .5 2
function rpgpve:game/battle_wave/gold/remove_gold


$loot spawn ~ ~-20 ~ loot rpgpve:items/armors/tier$(Tier)/tier$(Tier)$(ID)
execute positioned ~ ~-20 ~ run tellraw @s ["",{"text":"You bought ","color":"gray"},{"nbt":"Item.components.'minecraft:item_name'","interpret": true,"entity": "@e[type=item,distance=...8,nbt={Age:0s},limit=1]"},{"text":"!"}]
execute positioned ~ ~-20 ~ run kill @e[type=item,distance=...8,nbt={Age:0s},limit=1]