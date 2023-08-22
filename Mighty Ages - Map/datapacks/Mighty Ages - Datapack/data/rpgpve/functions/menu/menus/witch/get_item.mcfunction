#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------GET DISPLAYED ITEM-------------#
# ----- Get item ID with tier difference -----
execute if score #CurrentBattleWave Temp < #WaveUnlocked Temp run data modify storage rpgpve:witch MenuItem.id set value "minecraft:coal_block"
# ----- Get item name with tier difference -----
execute if score #CurrentBattleWave Temp < #WaveUnlocked Temp run data modify storage rpgpve:witch MenuItem.tag.display.Name set value '{"text":"Unknown Consumable","color":"yellow","italic":false}'
# ----- Get item lore with tier difference -----
execute if score #CurrentBattleWave Temp >= #WaveUnlocked Temp run function rpgpve:menu/menus/witch/get_cost

execute if score #CurrentBattleWave Temp < #WaveUnlocked Temp run data modify storage rpgpve:witch MenuItem.tag.display.Lore set value ['[{"text":"Unlocks at a later wave!","color":"gray","italic":false}]']
# ----- Extra NBT -----
execute if score #CurrentBattleWave Temp >= #WaveUnlocked Temp if score #HasBought Temp matches 1 run data modify storage rpgpve:witch MenuItem.tag.Enchantments set value [{id:"minecraft:power",level:1s}]
#------------------------------------------#