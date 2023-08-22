#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
kill @e[type=marker,tag=SDMinionDeathCheck]
scoreboard players set #OrbSpeed Temp 0
execute as @e[type=phantom,tag=SpectralDevourerMinion] at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/transform_minion
tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"Remaining minions were turned into damage orbs!","color":"light_purple"}]


execute as @a[tag=IsInRPGPVEGame] at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 0.4 1
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.phantom.hurt master @s ~ ~ ~ 0.6 0

tag @s remove Invincible

data modify entity @s Glowing set value 0b
tag @s remove DarkShield
tag @s remove VoidShield

scoreboard players reset @s Attack1Timer
#----------------------------------------#
