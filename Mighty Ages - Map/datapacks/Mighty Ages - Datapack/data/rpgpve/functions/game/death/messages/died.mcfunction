execute at @s run playsound entity.lightning_bolt.thunder master @a[distance=0..] ~ ~ ~ 1 1 0 
execute store result score #RandomMessage Temp run random value 1..3

execute if score #RandomMessage Temp matches 1 run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@s","color":"gold"},{"text":" left our world.","color":"yellow"}]
execute if score #RandomMessage Temp matches 2 run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@s","color":"gold"},{"text":" was crushed.","color":"yellow"}]
execute if score #RandomMessage Temp matches 3 run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@s","color":"gold"},{"text":" got obliterated.","color":"yellow"}]