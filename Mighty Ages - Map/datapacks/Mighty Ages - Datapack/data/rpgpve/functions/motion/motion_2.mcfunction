# store this entity's location (0.0625 blocks in front of 0,0,0 in any direction)
tp @s ^ ^ ^0.0625
execute store result score #XMot Temp run data get entity @s Pos[0] 10000
execute store result score #YMot Temp run data get entity @s Pos[1] 10000
execute store result score #ZMot Temp run data get entity @s Pos[2] 10000

# calculate and apply the final movement vector based on global speed * block speed
scoreboard players operation #XMot Temp *= #MotSpeed Temp
scoreboard players operation #YMot Temp *= #MotSpeed Temp
scoreboard players operation #ZMot Temp *= #MotSpeed Temp

# tiny bit of extra upwards motion helps
#scoreboard players remove #YMot Temp 100000

execute store result entity @e[type=#rpgpve:has_health_bar,tag=Motion_target,sort=nearest,limit=1] Motion[0] double 0.00001 run scoreboard players get #XMot Temp
execute store result entity @e[type=#rpgpve:has_health_bar,tag=Motion_target,sort=nearest,limit=1] Motion[1] double 0.00001 run scoreboard players get #YMot Temp
execute store result entity @e[type=#rpgpve:has_health_bar,tag=Motion_target,sort=nearest,limit=1] Motion[2] double 0.00001 run scoreboard players get #ZMot Temp

tag @e[type=#rpgpve:has_health_bar,tag=Motion_target,sort=nearest,limit=1] remove Motion_target
kill @s