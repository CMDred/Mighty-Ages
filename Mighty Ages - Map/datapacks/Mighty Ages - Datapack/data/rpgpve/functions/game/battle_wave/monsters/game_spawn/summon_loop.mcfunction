#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
summon marker ~ ~ ~ {Tags:["MonsterSpawnParticleBase","NewParticleBase"]}
data modify entity @e[type=marker,tag=NewParticleBase,limit=1] data.MobName set from storage rpgpve:waves Mob.Name
tag @e[type=marker,tag=NewParticleBase,limit=1] remove NewParticleBase
scoreboard players remove #ThisMobAmount Temp 1
execute if score #ThisMobAmount Temp matches 1.. run function rpgpve:game/battle_wave/monsters/game_spawn/summon_loop
#----------------------------------------#
