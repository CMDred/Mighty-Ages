#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------GET DISPLAYED ITEM-------------#
# ----- Get Tier difference -----
execute if score #Type Temp matches 1 if score #Style Temp matches 1 run scoreboard players operation #PlayerTier Temp = @a[tag=ThisPlayer] PhysicMeleePurchased
execute if score #Type Temp matches 2 if score #Style Temp matches 1 run scoreboard players operation #PlayerTier Temp = @a[tag=ThisPlayer] MagicMeleePurchased
execute if score #Type Temp matches 1 if score #Style Temp matches 2 run scoreboard players operation #PlayerTier Temp = @a[tag=ThisPlayer] PhysicRangedPurchased
execute if score #Type Temp matches 2 if score #Style Temp matches 2 run scoreboard players operation #PlayerTier Temp = @a[tag=ThisPlayer] MagicRangedPurchased

execute store result score #TierDifference Temp run scoreboard players operation #Tier Temp -= #PlayerTier Temp


# ----- Get item ID with tier difference -----
## if difference is greater or equal to 2, then show a piece of coal.
## else, don't change id.
execute if score #TierDifference Temp matches 2.. run data modify storage rpgpve:mage MenuItem.id set value "minecraft:coal"
# ----- Get item name with tier difference -----
## if difference is greater or equal to 2, then say "Unkown Item".
## else, don't change name.
execute if score #TierDifference Temp matches 2.. run data modify storage rpgpve:mage MenuItem.tag.display.Name set value '{"text":"Unkown Item","color":"yellow","italic":false}'
# ----- Get item lore with tier difference -----
## if difference is greater or equal to 2, then remove the existing lore and say "Buy the previous level to discover!".
## if difference is equal to 1, then show the cost and say "Click to buy" below the existing lore
## if difference is less or equal to 0, then just show "You own this item" in green underlined below the whole lore
execute if score #TierDifference Temp matches 2.. run data modify storage rpgpve:mage MenuItem.tag.display.Lore set value ['{"text":"Buy the previous level to discover!","color":"gray","italic":false}']
execute if score #TierDifference Temp matches 1 run function rpgpve:menu/menus/mage/get_cost
execute if score #TierDifference Temp matches ..0 run data modify storage rpgpve:mage MenuItem.tag.display.Lore append value '{"text":""}'
execute if score #TierDifference Temp matches ..0 run data modify storage rpgpve:mage MenuItem.tag.display.Lore append value '{"text":"You own this weapon!","color":"green","italic":false,"underlined":true}'
# ----- Extra NBT -----
## if difference is less or equal to 0, add enchant glint
execute if score #TierDifference Temp matches ..0 run data modify storage rpgpve:mage MenuItem.tag.Enchantments set value [{id:"minecraft:power",level:1s}]
#------------------------------------------#