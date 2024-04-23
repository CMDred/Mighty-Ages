# store this entity's location (0.0625 blocks in front of 0,0,0 in any direction)
tp @s ^ ^ ^0.0625
execute store result score #XMot Dummy run data get entity @s Pos[0] 10000
execute store result score #YMot Dummy run data get entity @s Pos[1] 10000
execute store result score #ZMot Dummy run data get entity @s Pos[2] 10000

# calculate and apply the final movement vector based on global speed * block speed
scoreboard players operation #XMot Dummy *= #MotSpeed Dummy
scoreboard players operation #YMot Dummy *= #MotSpeed Dummy
scoreboard players operation #ZMot Dummy *= #MotSpeed Dummy

# tiny bit of extra upwards motion helps
#scoreboard players remove #YMot Dummy 100000

execute store result entity @e[type=#rpgpve:has_health_bar,tag=Motion_target,sort=nearest,limit=1] Motion[0] double 0.00001 run scoreboard players get #XMot Dummy
execute store result entity @e[type=#rpgpve:has_health_bar,tag=Motion_target,sort=nearest,limit=1] Motion[1] double 0.00001 run scoreboard players get #YMot Dummy
execute store result entity @e[type=#rpgpve:has_health_bar,tag=Motion_target,sort=nearest,limit=1] Motion[2] double 0.00001 run scoreboard players get #ZMot Dummy

tag @e[type=#rpgpve:has_health_bar,tag=Motion_target,sort=nearest,limit=1] remove Motion_target
kill @s