#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------GET DISPLAYED ITEM-------------#
# ----- Get item ID with tier difference -----
execute if score #CurrentBattleWave Temp < #WaveUnlocked Temp run data modify storage rpgpve:endknight MenuItem.id set value "minecraft:coal_block"
# ----- Get item name with tier difference -----
execute if score #CurrentBattleWave Temp < #WaveUnlocked Temp run data modify storage rpgpve:endknight MenuItem.tag.display.Name set value '{"text":"Unknown Gadget","color":"yellow","italic":false}'
# ----- Get item lore with tier difference -----
execute if score #CurrentBattleWave Temp >= #WaveUnlocked Temp if score #HasBought Temp matches 0 run function rpgpve:menu/menus/end_knight/get_cost

execute if score #CurrentBattleWave Temp >= #WaveUnlocked Temp if score #HasBought Temp matches 1 run data modify storage rpgpve:endknight MenuItem.tag.display.Lore append value '{"text":""}'
execute if score #CurrentBattleWave Temp >= #WaveUnlocked Temp if score #HasBought Temp matches 1 run data modify storage rpgpve:endknight MenuItem.tag.display.Lore append value '{"text":"You already have this!","color":"green","italic":false,"underlined":true}'

execute if score #CurrentBattleWave Temp < #WaveUnlocked Temp run data modify storage rpgpve:endknight MenuItem.tag.display.Lore set value ['[{"text":"Unlocks at a later wave!","color":"gray","italic":false}]']
# ----- Extra NBT -----
execute if score #CurrentBattleWave Temp >= #WaveUnlocked Temp if score #HasBought Temp matches 1 run data modify storage rpgpve:endknight MenuItem.tag.Enchantments set value [{id:"minecraft:power",level:1s}]
#------------------------------------------#