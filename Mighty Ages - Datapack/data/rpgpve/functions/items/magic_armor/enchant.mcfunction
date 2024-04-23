item modify entity @s armor.head rpgpve:enchant
item modify entity @s armor.chest rpgpve:enchant
item modify entity @s armor.legs rpgpve:enchant
item modify entity @s armor.feet rpgpve:enchant
tag @s add Enchanted
tag @s remove NonEnchanted
stopsound @s * item.armor.equip_generic
stopsound @s * item.armor.equip_leather
stopsound @s * item.armor.equip_chain
stopsound @s * item.armor.equip_iron
stopsound @s * item.armor.equip_gold
stopsound @s * item.armor.equip_diamond
stopsound @s * item.armor.equip_netherite

execute at @s run playsound block.beacon.activate master @s ~ ~ ~ .25 2 0
execute at @s run particle witch ~ ~1 ~ .5 1 .5 0.01 5 normal 