tag @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..15] add Motion_target
scoreboard players set #MotSpeed Temp 2600
playsound entity.allay.ambient_with_item master @s ~ ~ ~ 1 2
execute at @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..15] run particle dust 0.792 0.345 0.024 1 ~ ~ ~ 0.8 0.05 0.8 0.1 20 normal
execute as @e[type=#rpgpve:has_health_bar,tag=Motion_target] at @s facing entity @p eyes positioned ^ ^ ^ rotated ~ -15 run function rpgpve:motion/motion
item replace entity @s[gamemode=!creative] weapon.mainhand with air
scoreboard players set @s AttractiveLanternTimer 101
tellraw @s {"text":"Your attractive lantern granted you +20 physic damage!","color":"gold","italic":false}