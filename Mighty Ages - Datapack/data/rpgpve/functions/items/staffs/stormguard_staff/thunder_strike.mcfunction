execute store result score #RNG Dummy run random value 1..10
execute if score #RNG Dummy matches 1 run summon lightning_bolt ~ ~-10 ~ 
particle electric_spark ~ ~0.5 ~ 1 2 1 0.1 20 force 
tag @s add Affected