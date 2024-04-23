execute store result score #RNG Dummy run random value -60..60
execute store result score #Rot Dummy run data get entity @s Rotation[0] 10
scoreboard players operation #RNG Dummy += #Rot Dummy
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get #RNG Dummy