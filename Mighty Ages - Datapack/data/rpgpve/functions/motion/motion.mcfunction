execute store result score #XMot Dummy run data get entity @s Pos[0] 10000
execute store result score #YMot Dummy run data get entity @s Pos[1] 10000
execute store result score #ZMot Dummy run data get entity @s Pos[2] 10000
tp @s ^ ^ ^0.01
execute store result score #DXMot Dummy run data get entity @s Pos[0] 10000
execute store result score #DYMot Dummy run data get entity @s Pos[1] 10000
execute store result score #DZMot Dummy run data get entity @s Pos[2] 10000
tp @s ^ ^ ^-0.01
scoreboard players operation #DXMot Dummy -= #XMot Dummy
scoreboard players operation #DYMot Dummy -= #YMot Dummy
scoreboard players operation #DZMot Dummy -= #ZMot Dummy
scoreboard players operation #DXMot Dummy *= #MotSpeed Dummy
scoreboard players operation #DYMot Dummy *= #MotSpeed Dummy
scoreboard players operation #DZMot Dummy *= #MotSpeed Dummy
execute store result entity @s Motion[0] double 0.00001 run scoreboard players get #DXMot Dummy
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get #DYMot Dummy
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get #DZMot Dummy
tag @s remove Motion_target