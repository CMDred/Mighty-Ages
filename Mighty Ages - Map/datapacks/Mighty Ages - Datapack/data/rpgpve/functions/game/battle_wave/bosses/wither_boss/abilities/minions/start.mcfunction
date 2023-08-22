#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result score #Count Temp if entity @e[type=#rpgpve:has_health_bar,tag=WitherMinion]

execute if score @s Date matches ..0 store result score #RNG Temp run random value 1..3
execute if score @s Date matches ..0 if score #RNG Temp matches 1 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/abilities/minions/1

execute if score #Count Temp matches 7.. run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/minions/kill_loop

execute positioned ~5 ~ ~ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/minions/summon
execute positioned ~-5 ~ ~ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/minions/summon
execute positioned ~ ~ ~5 run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/minions/summon
execute positioned ~ ~ ~-5 run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/minions/summon

scoreboard players reset @s Attack2Timer
#----------------------------------------#
