#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------------BUY--------------------#
data modify storage rpgpve:armorsmith MenuItem.tag.display.Lore append value '{"text":" "}'
data modify storage rpgpve:armorsmith MenuItem.tag.display.Lore append value '{"text":"Already maxed out!","color":"green","italic":false,"underlined":true}'
data modify storage rpgpve:armorsmith MenuItem.tag.Enchantments set value [{id:"minecraft:power",level:1s}]

#------------------------------------------#