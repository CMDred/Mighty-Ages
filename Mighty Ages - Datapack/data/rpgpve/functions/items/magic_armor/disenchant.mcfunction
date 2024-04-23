item modify entity @s armor.head rpgpve:disenchant
item modify entity @s armor.chest rpgpve:disenchant
item modify entity @s armor.legs rpgpve:disenchant
item modify entity @s armor.feet rpgpve:disenchant
tag @s add NonEnchanted
tag @s remove Enchanted

execute at @s run playsound block.beacon.deactivate master @s ~ ~ ~ .1 2 0
execute at @s run particle crit ~ ~1 ~ .5 1 .5 0.01 5 normal 