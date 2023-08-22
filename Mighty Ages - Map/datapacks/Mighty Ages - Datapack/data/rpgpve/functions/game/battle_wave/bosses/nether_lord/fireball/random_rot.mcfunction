execute store result score #RNG Temp run random value -60..60
execute store result score #Rot Temp run data get entity @s Rotation[0] 10
scoreboard players operation #RNG Temp += #Rot Temp
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get #RNG Temp