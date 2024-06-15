scoreboard players operation #Reflect Dummy = #RawDamage Dummy
scoreboard players operation #Reflect Dummy *= #c35 Constant
scoreboard players operation #Reflect Dummy /= #c100 Constant

scoreboard players operation #DamageDealt Dummy = #Reflect Dummy
tag @s add Attacker
scoreboard players set #DamageTypeDealt Dummy 101
execute on attacker run function rpgpve:items/damage
execute on attacker run tag @s remove AlreadyHit

playsound enchant.thorns.hit player @a ~ ~ ~ 2 1 0

scoreboard players operation #RawDamage Dummy -= #Reflect Dummy