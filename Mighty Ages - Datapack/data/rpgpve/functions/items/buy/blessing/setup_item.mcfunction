$scoreboard players operation #Cost Dummy = @p[tag=MenuOwner] $(Type)Cost

$scoreboard players set #WaveUnlocked Dummy $(WaveUnlocked)
execute store result score #WaveDifference Dummy run scoreboard players operation #WaveUnlocked Dummy -= #CurrentBattleWave Dummy


$execute unless score #WaveDifference Dummy matches ..0 run item replace entity @s container.$(Slot) with coal_block[minecraft:custom_data={MenuItem:1b,Clickable:1b,Slot:$(Slot)b}]
$item modify entity @s container.$(Slot) rpgpve:menus/make_menu_item
$execute unless score #WaveDifference Dummy matches ..0 run return run item modify entity @s container.$(Slot) rpgpve:menus/buyable_item/set_unbuyable

$execute if score @p[tag=MenuOwner] Has$(Type) matches 1.. run return run item modify entity @s container.$(Slot) rpgpve:menus/buyable_item/set_bought

$execute if score #WaveDifference Dummy matches ..0 run item modify entity @s container.$(Slot) rpgpve:menus/buyable_item/set_buyable