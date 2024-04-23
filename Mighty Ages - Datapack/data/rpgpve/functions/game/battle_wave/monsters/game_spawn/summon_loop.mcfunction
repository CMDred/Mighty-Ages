#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
summon marker ~ ~ ~ {Tags:["MonsterSpawnParticleBase","NewParticleBase"]}
data modify entity @e[type=marker,tag=NewParticleBase,limit=1] data.MobName set from storage rpgpve:waves Mob.Name
tag @e[type=marker,tag=NewParticleBase,limit=1] remove NewParticleBase
scoreboard players remove #ThisMobAmount Dummy 1
execute if score #ThisMobAmount Dummy matches 1.. run function rpgpve:game/battle_wave/monsters/game_spawn/summon_loop
#----------------------------------------#
