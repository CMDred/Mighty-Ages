#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------------BUY--------------------#
data modify storage rpgpve:armorsmith MenuItem.tag.display.Lore append value '{"text":" "}'
data modify storage rpgpve:armorsmith MenuItem.tag.display.Lore append value '{"text":"Cost","color":"dark_aqua","italic":false,"underlined":true}'

execute in minecraft:overworld run setblock 700000 1 700000 oak_sign{front_text:{messages:['[{"text":"Gold","color":"gold","italic":false},{"text":" x","color":"gray","italic":false},{"nbt":"MenuItem.tag.RPG.GoldCost","storage":"rpgpve:armorsmith"}]','{"text":""}','{"text":""}','{"text":""}']}}
execute in minecraft:overworld run data modify storage rpgpve:armorsmith MenuItem.tag.display.Lore append from block 700000 1 700000 front_text.messages[0]
execute in minecraft:overworld run setblock 700000 1 700000 air
#------------------------------------------#