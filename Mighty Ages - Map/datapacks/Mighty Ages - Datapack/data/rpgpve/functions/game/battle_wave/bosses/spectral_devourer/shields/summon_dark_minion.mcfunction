#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
summon phantom ~ ~ ~ {Size:2,Team:"sd_blackshield",Glowing:1b,DeathLootTable:"empty",Tags:["RPGPVEMob","Dark","SpectralDevourerMinion"],Attributes:[{Name:"minecraft:generic.max_health",Base:200},{Name:"minecraft:generic.flying_speed",Base:0.6},{Name:"minecraft:generic.attack_damage",Base:140},{Name:"minecraft:generic.armor",Base:20}],PortalCooldown:0,PersistenceRequired:1b,Passengers:[{id:"minecraft:marker",Tags:["SDMinionDeathCheck","Dark"]}]}
team join sd_blackshield @e[type=phantom,tag=Dark]
particle dust 0 0 0 2 ~ ~ ~ 0.8 0.8 0.8 0.1 50 force
particle flash ~ ~ ~ 0.2 0.2 0.2 0.1 20 force
execute as @e[type=phantom,tag=SpectralDevourerMinion] run attribute @s generic.attack_damage base set 110
#----------------------------------------#
