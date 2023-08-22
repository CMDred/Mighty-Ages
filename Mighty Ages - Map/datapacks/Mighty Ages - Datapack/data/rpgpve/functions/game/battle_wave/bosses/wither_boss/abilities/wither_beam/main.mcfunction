#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #BossAnim Temp 1

execute if score @s Temp matches ..200 run tp @s ~ ~0.02 ~ ~ -25

scoreboard players add @s Temp 1

execute if score @s Temp matches 20 run playsound block.note_block.pling master @a ~ ~ ~ 4 0.4 0
execute if score @s Temp matches 20 run playsound entity.generic.explode master @a ~ ~ ~ 2 0.4 0
execute if score @s Temp matches 20 run particle dust 0.1 0 0 5 ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Temp matches 80 run playsound block.note_block.pling master @a ~ ~ ~ 4 0.7 0
execute if score @s Temp matches 80 run playsound entity.generic.explode master @a ~ ~ ~ 2 0.7 0
execute if score @s Temp matches 80 run particle dust 0.2 0 0 5 ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Temp matches 120 run playsound block.note_block.pling master @a ~ ~ ~ 4 0.9 0
execute if score @s Temp matches 120 run playsound entity.generic.explode master @a ~ ~ ~ 2 0.9 0
execute if score @s Temp matches 120 run particle dust 0.3 0 0 5 ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Temp matches 140 run playsound block.note_block.pling master @a ~ ~ ~ 4 1.1 0
execute if score @s Temp matches 140 run playsound entity.generic.explode master @a ~ ~ ~ 2 1.1 0
execute if score @s Temp matches 140 run particle dust 0.4 0 0 5 ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Temp matches 155 run playsound block.note_block.pling master @a ~ ~ ~ 4 1.3 0
execute if score @s Temp matches 155 run playsound entity.generic.explode master @a ~ ~ ~ 2 1.3 0
execute if score @s Temp matches 155 run particle dust 0.5 0 0 5 ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Temp matches 170 run playsound block.note_block.pling master @a ~ ~ ~ 4 1.5 0
execute if score @s Temp matches 170 run playsound entity.generic.explode master @a ~ ~ ~ 2 1.5 0
execute if score @s Temp matches 170 run particle dust 0.6 0 0 5 ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Temp matches 180 run playsound block.note_block.pling master @a ~ ~ ~ 4 1.7 0
execute if score @s Temp matches 180 run playsound entity.generic.explode master @a ~ ~ ~ 2 1.7 0
execute if score @s Temp matches 180 run particle dust 0.7 0 0 5 ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Temp matches 185 run playsound block.note_block.pling master @a ~ ~ ~ 4 1.8 0
execute if score @s Temp matches 185 run playsound entity.generic.explode master @a ~ ~ ~ 2 1.8 0
execute if score @s Temp matches 185 run particle dust 0.8 0 0 5 ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Temp matches 188 run playsound block.note_block.pling master @a ~ ~ ~ 4 1.9 0
execute if score @s Temp matches 188 run playsound entity.generic.explode master @a ~ ~ ~ 2 1.9 0
execute if score @s Temp matches 188 run particle dust 0.9 0 0 5 ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Temp matches 191 run playsound block.note_block.pling master @a ~ ~ ~ 4 2 0
execute if score @s Temp matches 191 run playsound entity.generic.explode master @a ~ ~ ~ 2 2 0
execute if score @s Temp matches 191 run particle dust 0.95 0 0 5 ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Temp matches 193..210 run playsound block.note_block.pling master @a ~ ~ ~ 4 2 0
execute if score @s Temp matches 193..210 run playsound entity.generic.explode master @a ~ ~ ~ 2 2 0
execute if score @s Temp matches 193..210 run particle dust 1 0 0 5 ~ ~1.5 ~ 1 1 1 100 100 force



execute if score @s Temp matches 260 run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/beam
#----------------------------------------#
