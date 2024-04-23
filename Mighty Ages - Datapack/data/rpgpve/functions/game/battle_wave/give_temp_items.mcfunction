#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------WAVE START----------------#
execute if score @s GoldTelekinesis matches 1.. run tellraw @s ["",{"text":"You will","color":"green"},{"text":" attract ","color":"light_purple"},{"text":"Gold","color":"green"},{"text":"!","color":"green"}]

execute if score @s ProjProt matches 1.. run tellraw @s ["",{"text":"Projectiles ","color":"dark_green"},{"text":"will deal less damage to you! ","color":"green"}]

execute if score @s Speed matches 1.. run effect give @s speed 999999 0 false
execute if score @s Speed matches 1.. run tellraw @s ["",{"text":"You have been given ","color":"green"},{"text":"Speed I","color":"aqua"},{"text":"!","color":"green"}]

execute if score @s FireRes matches 1.. run effect give @s fire_resistance 999999 0 false
execute if score @s FireRes matches 1.. run tellraw @s ["",{"text":"You have been given ","color":"green"},{"text":"Fire Resistance","color":"gold"},{"text":"!","color":"green"}]

execute if score @s Strength matches 1.. run tellraw @s ["",{"text":"Your","color":"green"},{"text":" Physical Attacks ","color":"red"},{"text":"will deal more damage! ","color":"green"}]

execute if score @s Shield matches 1.. run loot replace entity @s weapon.offhand loot rpgpve:items/utilities/shield
execute if score @s Shield matches 1.. run tellraw @s ["",{"text":"You have been given a ","color":"green"},{"text":"Shield","color":"dark_green"},{"text":"!","color":"green"}]

execute if score @s TotemOfUndying matches 1.. run loot give @s loot rpgpve:items/utilities/totem_of_undying
execute if score @s TotemOfUndying matches 1.. run tellraw @s ["",{"text":"You have been given a ","color":"green"},{"text":"Totem of Undying","color":"dark_purple"},{"text":"!","color":"green"}]
#----------------------------------------#
