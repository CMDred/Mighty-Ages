execute as @a[nbt={active_effects:[{id:"minecraft:luck"}]}] run tag @s add RegenHealth
execute as @a[nbt={active_effects:[{id:"minecraft:unluck"}]}] run tag @s add RegenMana

execute store result score #RegenHealthCount Temp if entity @a[tag=RegenHealth]
execute store result score #RegenManaCount Temp if entity @a[tag=RegenMana]

execute as @a[tag=RegenHealth] if score #RegenHealthCount Temp matches 1.. run function rpgpve:items/potions/regen_health
execute as @a[tag=RegenMana] if score #RegenManaCount Temp matches 1.. run function rpgpve:items/potions/regen_mana

effect clear @a unluck
effect clear @a luck