execute store result score #XMot Temp run data get entity @s Pos[0] 10000
execute store result score #YMot Temp run data get entity @s Pos[1] 10000
execute store result score #ZMot Temp run data get entity @s Pos[2] 10000
tp @s ^ ^ ^0.01
execute store result score #DXMot Temp run data get entity @s Pos[0] 10000
execute store result score #DYMot Temp run data get entity @s Pos[1] 10000
execute store result score #DZMot Temp run data get entity @s Pos[2] 10000
tp @s ^ ^ ^-0.01
scoreboard players operation #DXMot Temp -= #XMot Temp
scoreboard players operation #DYMot Temp -= #YMot Temp
scoreboard players operation #DZMot Temp -= #ZMot Temp
scoreboard players operation #DXMot Temp *= #MotSpeed Temp
scoreboard players operation #DYMot Temp *= #MotSpeed Temp
scoreboard players operation #DZMot Temp *= #MotSpeed Temp
execute store result entity @s Motion[0] double 0.00001 run scoreboard players get #DXMot Temp
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get #DYMot Temp
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get #DZMot Temp
tag @s remove Motion_target