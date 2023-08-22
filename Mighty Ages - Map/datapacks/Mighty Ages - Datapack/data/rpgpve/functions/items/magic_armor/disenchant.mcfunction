item modify entity @s armor.head rpgpve:disenchant
item modify entity @s armor.chest rpgpve:disenchant
item modify entity @s armor.legs rpgpve:disenchant
item modify entity @s armor.feet rpgpve:disenchant
tellraw @s {"text":"Your magical weapon no longer grants you protection from magical damage!","color":"red","italic":false}
tag @s add NonEnchanted
tag @s remove Enchanted