tag @s add Motion_target
tag @s add Affected
scoreboard players set #MotSpeed Dummy 1600
execute facing entity @p[tag=Attacker] eyes rotated ~180 -15 run function rpgpve:motion/motion