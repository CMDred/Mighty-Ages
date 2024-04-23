#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
summon creeper ~ ~ ~ {CustomName:'{"text":"Void Creeper"}',active_effects:[{id:"minecraft:invisibility",ambient:0b,show_particles:1b,amplifier:0b}],DeathLootTable:"rpgpve:mob_gold_drops/void_creeper",Tags:["RPGPVEMob","VoidCreeper","SpellCasting","NewVoidCreeper","Invisible"],Attributes:[{Name:"minecraft:generic.max_health",Base:540},{Name:"minecraft:generic.knockback_resistance",Base:0.75},{Name:"minecraft:generic.movement_speed",Base:0.35},{Name:"minecraft:generic.armor",Base:300},{Name:"generic.attack_damage",Base:140}],PortalCooldown:160,PersistenceRequired:1b,Fuse:18,ExplosionRadius:0b,Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Tags:["VoidCreeperDamageDetect","NewDmgDetect"]}]}
scoreboard players set @e[type=armor_stand,tag=NewDmgDetect] Dummy 190
tag @e remove NewVoidCreeper
tag @e remove NewDmgDetect
#----------------------------------------#
