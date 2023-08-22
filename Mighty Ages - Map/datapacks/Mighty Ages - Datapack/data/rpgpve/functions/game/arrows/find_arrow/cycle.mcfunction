#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
# Setup
data modify storage rpgpve:inventory This set from storage rpgpve:inventory Inventory[0]

# check if arrow
execute if data storage rpgpve:inventory This{id:"minecraft:arrow",tag:{RPG:{NotDefaultArrow:1b}}} run function rpgpve:game/arrows/find_arrow/found
execute if data storage rpgpve:inventory This{id:"minecraft:tipped_arrow",tag:{RPG:{NotDefaultArrow:1b}}} run function rpgpve:game/arrows/find_arrow/found
execute if data storage rpgpve:inventory This{id:"minecraft:spectral_arrow",tag:{RPG:{NotDefaultArrow:1b}}} run function rpgpve:game/arrows/find_arrow/found

# Cycle the array (move first element to the end of the array)
data modify storage rpgpve:inventory Inventory append from storage rpgpve:inventory Inventory[0]
data remove storage rpgpve:inventory Inventory[0]

# Loop (if the array was not fully traversed)
scoreboard players remove #AmountOfIterations Temp 1
execute if score #AmountOfIterations Temp matches 1.. run function rpgpve:game/arrows/find_arrow/cycle
#----------------------------------------#
