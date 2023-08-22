#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
data modify storage rpgpve:waves MobName set from storage rpgpve:waves Mob.Name
function rpgpve:game/battle_wave/monsters/game_spawn/attribute_mob_to_particle

# Random Speed
execute store result score @s ParticleSpeed run random value 15..80

function rpgpve:game/battle_wave/monsters/game_spawn/check_spread

# Reset
tag @s remove NewMonsterSpawnParticle
#----------------------------------------#
