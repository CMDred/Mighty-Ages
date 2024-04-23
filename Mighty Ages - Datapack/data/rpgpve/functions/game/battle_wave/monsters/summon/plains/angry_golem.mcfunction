#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
summon iron_golem ~ ~ ~ {CustomName:'{"text":"Angry Golem"}',DeathLootTable:"",Tags:["RPGPVEMob","AngryGolem","MiniBoss"],Attributes:[{Name:"minecraft:generic.max_health",Base:350},{Name:"minecraft:generic.movement_speed",Base:0.23},{Name:"minecraft:generic.attack_damage",Base:50},{Name:"minecraft:generic.armor",Base:50},{Name:"minecraft:generic.knockback_resistance",Base:0.6}],PortalCooldown:10,PersistenceRequired:1b}
playsound block.anvil.land master @a[tag=IsInRPGPVEGame] ~ ~ ~ 0.8 0
summon text_display ~ ~ ~ {Tags:["MiniBossName"],billboard:'center',text:'{"text":"ANGRY GOLEM","color":"dark_red","underlined": true,"bold": true}'}
#----------------------------------------#
