scoreboard players set #Exe Dummy 1

particle block{block_state:{Name:"minecraft:blackstone"}} ~ ~.25 ~ .25 .25 .25 0.001 1 normal

scoreboard players add @s Dummy 1
execute if score @s Dummy matches 60.. run function rpgpve:items/wall_ball/remove_block