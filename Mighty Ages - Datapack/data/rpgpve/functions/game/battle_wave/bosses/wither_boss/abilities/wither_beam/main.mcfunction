#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #BossAnim Dummy 1

execute if score @s Dummy matches ..200 run tp @s ~ ~0.02 ~ ~ -25

scoreboard players add @s Dummy 1

execute if score @s Dummy matches 20 run playsound block.note_block.pling master @a ~ ~ ~ 4 0.4 0
execute if score @s Dummy matches 20 run playsound entity.generic.explode master @a ~ ~ ~ 2 0.4 0
execute if score @s Dummy matches 20 run particle dust{color:[0.1d,0d,0d],scale:4} ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Dummy matches 80 run playsound block.note_block.pling master @a ~ ~ ~ 4 0.7 0
execute if score @s Dummy matches 80 run playsound entity.generic.explode master @a ~ ~ ~ 2 0.7 0
execute if score @s Dummy matches 80 run particle dust{color:[0.2d,0d,0d],scale:4} ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Dummy matches 120 run playsound block.note_block.pling master @a ~ ~ ~ 4 0.9 0
execute if score @s Dummy matches 120 run playsound entity.generic.explode master @a ~ ~ ~ 2 0.9 0
execute if score @s Dummy matches 120 run particle dust{color:[0.3d,0d,0d],scale:4} ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Dummy matches 140 run playsound block.note_block.pling master @a ~ ~ ~ 4 1.1 0
execute if score @s Dummy matches 140 run playsound entity.generic.explode master @a ~ ~ ~ 2 1.1 0
execute if score @s Dummy matches 140 run particle dust{color:[0.4d,0d,0d],scale:4} ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Dummy matches 155 run playsound block.note_block.pling master @a ~ ~ ~ 4 1.3 0
execute if score @s Dummy matches 155 run playsound entity.generic.explode master @a ~ ~ ~ 2 1.3 0
execute if score @s Dummy matches 155 run particle dust{color:[0.5d,0d,0d],scale:4} ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Dummy matches 170 run playsound block.note_block.pling master @a ~ ~ ~ 4 1.5 0
execute if score @s Dummy matches 170 run playsound entity.generic.explode master @a ~ ~ ~ 2 1.5 0
execute if score @s Dummy matches 170 run particle dust{color:[0.6d,0d,0d],scale:4} ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Dummy matches 180 run playsound block.note_block.pling master @a ~ ~ ~ 4 1.7 0
execute if score @s Dummy matches 180 run playsound entity.generic.explode master @a ~ ~ ~ 2 1.7 0
execute if score @s Dummy matches 180 run particle dust{color:[0.7d,0d,0d],scale:4} ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Dummy matches 185 run playsound block.note_block.pling master @a ~ ~ ~ 4 1.8 0
execute if score @s Dummy matches 185 run playsound entity.generic.explode master @a ~ ~ ~ 2 1.8 0
execute if score @s Dummy matches 185 run particle dust{color:[0.8d,0d,0d],scale:4} ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Dummy matches 188 run playsound block.note_block.pling master @a ~ ~ ~ 4 1.9 0
execute if score @s Dummy matches 188 run playsound entity.generic.explode master @a ~ ~ ~ 2 1.9 0
execute if score @s Dummy matches 188 run particle dust{color:[0.9d,0d,0d],scale:4} ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Dummy matches 191 run playsound block.note_block.pling master @a ~ ~ ~ 4 2 0
execute if score @s Dummy matches 191 run playsound entity.generic.explode master @a ~ ~ ~ 2 2 0
execute if score @s Dummy matches 191 run particle dust{color:[0.95d,0d,0d],scale:4} ~ ~1.5 ~ 1 1 1 100 100 force

execute if score @s Dummy matches 193..210 run playsound block.note_block.pling master @a ~ ~ ~ 4 2 0
execute if score @s Dummy matches 193..210 run playsound entity.generic.explode master @a ~ ~ ~ 2 2 0
execute if score @s Dummy matches 193..210 run particle dust{color:[1d,0d,0d],scale:4} ~ ~1.5 ~ 1 1 1 100 100 force



execute if score @s Dummy matches 260 run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/beam
#----------------------------------------#
