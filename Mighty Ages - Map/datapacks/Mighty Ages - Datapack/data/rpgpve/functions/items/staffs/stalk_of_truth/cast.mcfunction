scoreboard players set #Reach Temp 200

scoreboard players set @s CastCD 15
scoreboard players set #StaffPiercing Temp 1

execute store result score #RandomEffect Temp run random value 1..2
execute if score #RandomEffect Temp matches 1 anchored eyes positioned ^ ^-0.5 ^1 run function rpgpve:items/staffs/stalk_of_truth/raycast1
execute if score #RandomEffect Temp matches 1 run playsound block.beacon.activate master @s ~ ~ ~ 0.5 2

execute if score #RandomEffect Temp matches 2 anchored eyes positioned ^ ^-0.5 ^1 run function rpgpve:items/staffs/stalk_of_truth/raycast2
execute if score #RandomEffect Temp matches 2 run playsound block.beacon.deactivate master @s ~ ~ ~ 0.5 2