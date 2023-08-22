#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------GET DISPLAYED ITEM-------------#
data modify storage rpgpve:weaponsmith MenuItem.tag.display.Lore append value '{"text":""}'
data modify storage rpgpve:weaponsmith MenuItem.tag.display.Lore append value '{"text":"Cost","color":"dark_aqua","italic":false,"underlined":true}'
execute in minecraft:overworld run setblock 700000 1 700000 air
execute in minecraft:overworld run setblock 700000 1 700000 oak_sign
execute store result score #Count Temp run data get storage rpgpve:weaponsmith MenuItem.tag.RPG.GoldCost
execute in minecraft:overworld run data modify block 700000 1 700000 front_text.messages[0] set value '[{"text":"Gold","color":"gold","italic":false},{"text":" x","color":"gray","italic":false},{"score":{"name":"#Count","objective":"Temp"},"color":"gold","italic":false}]'
execute in minecraft:overworld run data modify storage rpgpve:weaponsmith MenuItem.tag.display.Lore append from block 700000 1 700000 front_text.messages[0]
execute in minecraft:overworld run setblock 700000 1 700000 air
data modify storage rpgpve:weaponsmith MenuItem.tag.display.Lore append value '{"text":""}'
data modify storage rpgpve:weaponsmith MenuItem.tag.display.Lore append value '{"text":"Click to purchase!","color":"yellow","italic":false,"underlined":false}'
#------------------------------------------#