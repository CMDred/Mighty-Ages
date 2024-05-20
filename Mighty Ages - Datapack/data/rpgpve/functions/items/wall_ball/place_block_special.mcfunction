execute unless block ~ ~ ~ #rpgpve:allowed run return 0

summon marker ~ ~ ~ {Tags:["WallBlock"]}

execute if score @s Dummy matches 0 run setblock ~ ~ ~ blue_glazed_terracotta
execute if score @s Dummy matches 1 run setblock ~ ~ ~ red_glazed_terracotta