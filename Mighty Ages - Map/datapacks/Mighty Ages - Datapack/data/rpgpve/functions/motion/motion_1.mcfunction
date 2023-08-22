summon minecraft:area_effect_cloud ~ ~ ~ {duration:2,Tags:["TrigTemp"]}
tp @e[type=area_effect_cloud,tag=TrigTemp,limit=1] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=TrigTemp,limit=1] at @s positioned 0.0 0.0 0.0 run function rpgpve:motion/motion_2