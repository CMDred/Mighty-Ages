scoreboard players set #Reach Dummy 100

playsound entity.enderman.teleport master @s ~ ~ ~ 0.7 2
scoreboard players set @s CastCD 10
execute anchored eyes positioned ^ ^-0.5 ^1 run function rpgpve:items/staffs/glowing_branch/raycast