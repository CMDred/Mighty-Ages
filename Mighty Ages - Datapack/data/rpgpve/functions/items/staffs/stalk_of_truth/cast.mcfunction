scoreboard players set #Reach Dummy 200

scoreboard players set @s CastCD 15

execute store result score #RandomEffect Dummy run random value 1..2
execute if score #RandomEffect Dummy matches 1 anchored eyes positioned ^ ^-0.5 ^1 run function rpgpve:items/staffs/stalk_of_truth/raycast1
execute if score #RandomEffect Dummy matches 1 run playsound block.beacon.activate master @s ~ ~ ~ 0.5 2

execute if score #RandomEffect Dummy matches 2 anchored eyes positioned ^ ^-0.5 ^1 run function rpgpve:items/staffs/stalk_of_truth/raycast2
execute if score #RandomEffect Dummy matches 2 run playsound block.beacon.deactivate master @s ~ ~ ~ 0.5 2