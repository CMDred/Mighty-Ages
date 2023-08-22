#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute as @e[type=phantom,tag=SpectralDevourerMinion] run data modify entity @s Glowing set value 0b
execute as @e[type=phantom,tag=SpectralDevourerMinion] at @s run tp ~ ~-100 ~
kill @e[type=marker,tag=SDMinionDeathCheck]
kill @e[type=phantom,tag=SpectralDevourerMinion]

execute as @a[tag=IsInRPGPVEGame] at @s run playsound block.beacon.activate master @s ~ ~ ~ 0.4 1
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.phantom.ambient master @s ~ ~ ~ 0.6 0

data modify entity @s Glowing set value 1b

execute store result score #rand Temp run random value 1..2

execute if score #rand Temp matches 1 run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/dark
execute if score #rand Temp matches 2 run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/void

tag @s add Invincible

function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/summon_minion_eggs

scoreboard players reset @s Attack1Timer
#----------------------------------------#
