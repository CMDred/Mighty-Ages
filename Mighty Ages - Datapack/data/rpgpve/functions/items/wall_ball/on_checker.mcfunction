scoreboard players set #Exe Dummy 1

scoreboard players set #HasVehicle Dummy 0
execute on vehicle run scoreboard players set #HasVehicle Dummy 1
execute if score #HasVehicle Dummy matches 0 run function rpgpve:items/wall_ball/spawn