#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------WAVE START----------------#
execute if score @s HasGoldTelekinesis matches 1.. run tellraw @s [{"text":"You will","color":"gray"},{"text":" attract ","color":"gold"},{"text":"Gold!"}]
execute if score @s HasPiercing matches 1.. run tellraw @s [{"text":"Your ranged attacks will","color":"gray"},{"text":" pierce ","color":"light_purple"},{"text":"Enemies!"}]
execute if score @s HasSpeed matches 1.. run effect give @s speed infinite 0 false
execute if score @s HasSpeed matches 1.. run tellraw @s [{"text":"You have been given ","color":"gray"},{"text":"Speed I","color":"aqua"},{"text":"!"}]
execute if score @s HasFireResistance matches 1.. run effect give @s fire_resistance infinite 0 false
execute if score @s HasFireResistance matches 1.. run tellraw @s [{"text":"You have been given ","color":"gray"},{"text":"Fire Resistance","color":"gold"},{"text":"!"}]
execute if score @s HasStrength matches 1.. run tellraw @s [{"text":"Your","color":"gray"},{"text":" Physical Attacks ","color":"red"},{"text":"will deal more damage! "}]


execute if score @s HasRevealingTorch matches 1.. run loot give @s loot rpgpve:items/utilities/gadgets/revealing_torch
execute if score @s HasRevealingTorch matches 1.. run tellraw @s [{"text":"You have been given a ","color":"gray"},{"text":"Revealing Torch","color":"red"},{"text":"!"}]
execute if score @s HasAttractiveGauntlet matches 1.. run loot give @s loot rpgpve:items/utilities/gadgets/attractive_gauntlet
execute if score @s HasAttractiveGauntlet matches 1.. run tellraw @s [{"text":"You have been given an ","color":"gray"},{"text":"Attractive Gauntlet","color":"aqua"},{"text":"!"}]
execute if score @s HasRepellingGauntlet matches 1.. run loot give @s loot rpgpve:items/utilities/gadgets/repelling_gauntlet
execute if score @s HasRepellingGauntlet matches 1.. run tellraw @s [{"text":"You have been given a ","color":"gray"},{"text":"Repelling Gauntlet","color":"gold"},{"text":"!"}]
execute if score @s HasTotemOfUndying matches 1.. run loot give @s loot rpgpve:items/utilities/gadgets/totem_of_undying
execute if score @s HasTotemOfUndying matches 1.. run tellraw @s [{"text":"You have been given a ","color":"gray"},{"text":"Totem of Undying","color":"dark_purple"},{"text":"!"}]
#----------------------------------------#
