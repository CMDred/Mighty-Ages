#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
summon phantom -15000 50 0 {CustomName:'{"text":"Spectral Devourer"}',DeathLootTable:"empty",Size:20,Tags:["RPGPVEMob","Boss","SpectralDevourer"],Attributes:[{Name:"minecraft:generic.max_health",Base:9000},{Name:"minecraft:generic.armor",Base:70},{Name:"minecraft:generic.attack_damage",Base:190}],PortalCooldown:70,PersistenceRequired:1b}
scoreboard players set #BossSpawned Temp 1
attribute @e[type=phantom,tag=Boss,limit=1] generic.attack_damage base set 170
#----------------------------------------#