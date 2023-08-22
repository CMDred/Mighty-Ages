#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
summon giant -19975 -4 11 {PersistenceRequired:1b,CustomName:'{"text":"Troll Bro X"}',DeathLootTable:"empty",Tags:["RPGPVEMob","Boss","TrollBro","TrollBroX"],Attributes:[{Name:"minecraft:generic.max_health",Base:9500},{Name:"minecraft:generic.armor",Base:180},{Name:"minecraft:generic.attack_damage",Base:260}],PortalCooldown:40,PersistenceRequired:1b,Passengers:[{id:"minecraft:zombie",active_effects:[{id:"minecraft:invisibility",show_particles:0b,duration:99999999,ambient:0b,amplifier:1b}],CustomNameVisible:0b,DeathLootTable:"",Tags:["GiantController","ControlsX","DontRegister"],PersistenceRequired:1b,Invulnerable:1b}],ArmorItems:[{},{},{},{id:"minecraft:golden_helmet",Count:1b,tag:{Unbreakable:1b}}],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b}},{}],Glowing:1b,active_effects:[{id:"minecraft:slowness",show_particles:0b,duration:99999999,ambient:0b,amplifier:1b},{id:"minecraft:fire_resistance",show_particles:0b,duration:99999999,ambient:0b,amplifier:1b}]}
particle lava -19975 16 11 2 10 2 .1 200 force

summon giant -20013 -4 -27 {PersistenceRequired:1b,CustomName:'{"text":"Troll Bro Z"}',DeathLootTable:"empty",Tags:["RPGPVEMob","Boss","TrollBro","TrollBroZ"],Attributes:[{Name:"minecraft:generic.max_health",Base:11000},{Name:"minecraft:generic.armor",Base:120},{Name:"minecraft:generic.attack_damage",Base:220}],PortalCooldown:100,PersistenceRequired:1b,Passengers:[{id:"minecraft:zombie",active_effects:[{id:"minecraft:invisibility",show_particles:0b,duration:99999999,ambient:0b,amplifier:1b}],CustomNameVisible:0b,DeathLootTable:"",Tags:["GiantController","ControlsZ","DontRegister"],PersistenceRequired:1b,Invulnerable:1b}],ArmorItems:[{},{},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b}},{}],HandItems:[{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b}}],Glowing:1b,active_effects:[{id:"minecraft:slowness",show_particles:0b,duration:99999999,ambient:0b,amplifier:1b},{id:"minecraft:fire_resistance",show_particles:0b,duration:99999999,ambient:0b,amplifier:1b}]}
particle lava -20013 16 -27 2 10 2 .1 200 force

scoreboard players set #BossSpawned Temp 1
#----------------------------------------#