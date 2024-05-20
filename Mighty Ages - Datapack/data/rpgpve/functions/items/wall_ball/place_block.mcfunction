execute unless block ~ ~ ~ #rpgpve:allowed run return 0

summon marker ~ ~ ~ {Tags:["WallBlock"]}

execute store result score #RNG Dummy run random value 1..3
execute if score #RNG Dummy matches 1 run setblock ~ ~ ~ polished_blackstone_bricks
execute if score #RNG Dummy matches 2 run setblock ~ ~ ~ blackstone
execute if score #RNG Dummy matches 3 run setblock ~ ~ ~ cracked_polished_blackstone_bricks