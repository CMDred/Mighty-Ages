#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
summon slime ~ ~ ~ {CustomName:'{"text":"Sculk Slime"}',CustomNameVisible:1b,active_effects:[{id:"minecraft:invisibility",ambient:0b,duration:999999,amplifier:0b,show_particles:0b}],Size:4,DeathLootTable:"rpgpve:mob_gold_drops/sculk_slime",Tags:["RPGPVEMob","SculkSlime","MagicalDamage"],Attributes:[{Name:"minecraft:generic.max_health",Base:1600},{Name:"minecraft:generic.attack_damage",Base:140},{Name:"minecraft:generic.armor",Base:40}],PortalCooldown:40,PersistenceRequired:1b,Passengers:[{id:"minecraft:armor_stand",Tags:["SculkSlimeTexture"],Invisible:1b,CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:turtle_scute",Count:1b,components:{"minecraft:custom_model_data":4}}]}]}
execute as @e[type=slime,tag=SculkSlime] run attribute @s generic.attack_damage base set 140
#----------------------------------------#
