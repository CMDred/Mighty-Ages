#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
data modify storage rpgpve:waves MobName set from storage rpgpve:waves Mob.Name
function rpgpve:game/battle_wave/monsters/game_spawn/attribute_mob_to_particle

# Random Speed
execute store result score @s ParticleSpeed run random value 8..40

# Reset
tag @s remove NewMonsterSpawnParticle
#----------------------------------------#
