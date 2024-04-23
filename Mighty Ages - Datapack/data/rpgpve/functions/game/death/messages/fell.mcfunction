execute at @s run playsound entity.lightning_bolt.thunder master @a[distance=0..] ~ ~ ~ 1 1 0.1

execute store result score #RandomMessage Dummy run random value 1..3

execute if score #RandomMessage Dummy matches 1 run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@s","color":"gold"},{"text":" jumped from too high.","color":"yellow"}]
execute if score #RandomMessage Dummy matches 2 run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@s","color":"gold"},{"text":" discovered they do not have wings.","color":"yellow"}]
execute if score #RandomMessage Dummy matches 3 run tellraw @a[tag=IsInRPGPVEGame] ["",{"selector":"@s","color":"gold"},{"text":" discovered gravity's unforgiving nature.","color":"yellow"}]