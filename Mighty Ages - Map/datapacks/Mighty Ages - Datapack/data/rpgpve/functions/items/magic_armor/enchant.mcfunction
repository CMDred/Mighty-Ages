item modify entity @s armor.head rpgpve:enchant
item modify entity @s armor.chest rpgpve:enchant
item modify entity @s armor.legs rpgpve:enchant
item modify entity @s armor.feet rpgpve:enchant
tellraw @s {"text":"Your magical weapon grants you protection from magical damage!","color":"light_purple","italic":false}
tag @s add Enchanted
tag @s remove NonEnchanted