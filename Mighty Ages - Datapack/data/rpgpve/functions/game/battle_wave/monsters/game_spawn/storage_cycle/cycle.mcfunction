#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
# Setup
data modify storage rpgpve:waves Mob set from storage rpgpve:waves CurrentWave[0]

# Tellraw
tellraw @a[tag=IsInRPGPVEGame] ["",{"nbt":"Mob.Name","storage":"rpgpve:waves","interpret": false,"color":"gold"},{"text":" x","color":"gray"},{"nbt":"Mob.Amount","storage":"rpgpve:waves","interpret": false,"color":"gold"}]

# Summon Particle(s)
execute store result score #ThisMobAmount Dummy run data get storage rpgpve:waves Mob.Amount
execute if score #CurrentBattleWave Dummy matches 0..9 in rpgpve:rpgpve_game positioned 0 64 0 run function rpgpve:game/battle_wave/monsters/game_spawn/summon_loop
execute if score #CurrentBattleWave Dummy matches 10..19 in rpgpve:rpgpve_game positioned -10000 64 0 run function rpgpve:game/battle_wave/monsters/game_spawn/summon_loop
execute if score #CurrentBattleWave Dummy matches 20..29 in rpgpve:rpgpve_game positioned -15000 64 0 run function rpgpve:game/battle_wave/monsters/game_spawn/summon_loop
execute if score #CurrentBattleWave Dummy matches 30..39 in rpgpve:rpgpve_game positioned -20000 6 0 run function rpgpve:game/battle_wave/monsters/game_spawn/summon_loop
execute if score #CurrentBattleWave Dummy matches 40..49 in the_end positioned 0 56 0 run function rpgpve:game/battle_wave/monsters/game_spawn/summon_loop

# Cycle the array (move first element to the end of the array)
data modify storage rpgpve:waves CurrentWave append from storage rpgpve:waves CurrentWave[0]
data remove storage rpgpve:waves CurrentWave[0]

# Loop (if the array was not fully traversed)
scoreboard players remove #AmountOfIterations Dummy 1
execute if score #AmountOfIterations Dummy matches 1.. run function rpgpve:game/battle_wave/monsters/game_spawn/storage_cycle/cycle
#----------------------------------------#
