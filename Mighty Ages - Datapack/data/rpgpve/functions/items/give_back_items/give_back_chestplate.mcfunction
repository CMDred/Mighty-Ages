#========================================#
#         Made by TheCarotte             #
#       Don't claim as own work          #
#========================================#
#-----------------ITEMS------------------#
execute if score @s ChestplateTierPurchased matches 1 run loot replace entity @s armor.chest loot rpgpve:items/armors/tier1/tier1chestplate
execute if score @s ChestplateTierPurchased matches 2 run loot replace entity @s armor.chest loot rpgpve:items/armors/tier2/tier2chestplate
execute if score @s ChestplateTierPurchased matches 3 run loot replace entity @s armor.chest loot rpgpve:items/armors/tier3/tier3chestplate
execute if score @s ChestplateTierPurchased matches 4 run loot replace entity @s armor.chest loot rpgpve:items/armors/tier4/tier4chestplate
execute if score @s ChestplateTierPurchased matches 5 run loot replace entity @s armor.chest loot rpgpve:items/armors/tier5/tier5chestplate
execute if score @s ChestplateTierPurchased matches 6 run loot replace entity @s armor.chest loot rpgpve:items/armors/tier6/tier6chestplate

execute if entity @s[tag=Enchanted] run function rpgpve:items/magic_armor/enchant

function rpgpve:items/apply_team_trim
#----------------------------------------#
