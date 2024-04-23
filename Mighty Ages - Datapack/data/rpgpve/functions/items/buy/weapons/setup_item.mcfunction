$scoreboard players operation #Cost Dummy = #$(Type)$(Tier)Cost Dummy
$scoreboard players set #Tier Dummy $(Tier)
execute store result score #TierDifference Dummy run scoreboard players operation #Tier Dummy -= #CurrentTierPurchased Dummy
scoreboard players operation @s Dummy = #TierDifference Dummy
$execute if score #TierDifference Dummy matches 2.. run item replace entity @s container.$(Slot) with coal_block[minecraft:custom_data={MenuItem:1b,Clickable:1b,Slot:$(Slot)b}]
$item modify entity @s container.$(Slot) rpgpve:menus/buyable_item/change_buyable_item
$item modify entity @s container.$(Slot) rpgpve:menus/make_menu_item