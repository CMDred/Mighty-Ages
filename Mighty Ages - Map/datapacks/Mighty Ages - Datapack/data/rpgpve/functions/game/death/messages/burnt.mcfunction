execute at @s run playsound entity.lightning_bolt.thunder master @a[distance=0..] ~ ~ ~ 1 1 1 
execute store result score #RandomMessage Temp run random value 1..3

execute if score #RandomMessage Temp matches 1 run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@s","color":"gold"},{"text":" burnt to death.","color":"yellow"}]
execute if score #RandomMessage Temp matches 2 run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@s","color":"gold"},{"text":" found that playing with fire can have dire consequences.","color":"yellow"}]
execute if score #RandomMessage Temp matches 3 run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@s","color":"gold"},{"text":" turned into a crispy critter while trying to toast marshmallows.","color":"yellow"}]