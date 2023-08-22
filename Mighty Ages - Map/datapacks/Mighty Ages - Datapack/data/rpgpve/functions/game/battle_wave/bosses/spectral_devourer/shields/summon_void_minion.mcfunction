#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
summon phantom ~ ~ ~ {Size:2,Team:"sd_purpleshield",Glowing:1b,DeathLootTable:"empty",Tags:["RPGPVEMob","Void","SpectralDevourerMinion"],Attributes:[{Name:"minecraft:generic.max_health",Base:200},{Name:"minecraft:generic.flying_speed",Base:0.6},{Name:"minecraft:generic.attack_damage",Base:140},{Name:"minecraft:generic.armor",Base:20}],PortalCooldown:0,PersistenceRequired:1b,Passengers:[{id:"minecraft:marker",Tags:["SDMinionDeathCheck","Void"]}]}
team join sd_purpleshield @e[type=phantom,tag=Void]
particle dust 0.541 0 0.443 2 ~ ~ ~ 0.8 0.8 0.8 0.1 50 force
particle flash ~ ~ ~ 0.2 0.2 0.2 0.1 20 force
#----------------------------------------#
