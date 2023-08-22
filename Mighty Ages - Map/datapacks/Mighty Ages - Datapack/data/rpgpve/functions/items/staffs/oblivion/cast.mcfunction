scoreboard players set #Reach Temp 350

playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.7 0

scoreboard players set @s CastCD 15
scoreboard players set #StaffPiercing Temp 1
execute anchored eyes positioned ^ ^-0.5 ^1 run function rpgpve:items/staffs/oblivion/raycast