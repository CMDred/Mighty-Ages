#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute unless score @s Attack1Timer matches 1.. run function rpgpve:game/battle_wave/bosses/troll_bros/setup_stats

scoreboard players add @s Attack2Timer 1
execute if score @s Attack2Timer >= @s Attack2Delay run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/earth_bound/start

scoreboard players add @s[tag=!Digging,tag=!Resurfacing] Attack3Timer 1
execute if score @s Attack3Timer >= @s Attack3Delay run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/dig/start

scoreboard players add @s[tag=!CrystalSpawned] Attack4Timer 1
execute if score @s Attack4Timer >= @s Attack4Delay run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/start

# Ambient Sound
execute store result score #RNG Dummy run random value 1..500
execute if score @s Date matches ..0 if score #RNG Dummy matches 1 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/ambient/z/random
#----------------------------------------#
