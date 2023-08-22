scoreboard players set #Reach Temp 160

playsound minecraft:block.sculk_shrieker.shriek master @s ~ ~ ~ 0.7 2
scoreboard players set @s CastCD 15
execute anchored eyes positioned ^ ^-0.5 ^1 run function rpgpve:items/staffs/sculk_staff/raycast