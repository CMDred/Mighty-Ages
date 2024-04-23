#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute in rpgpve:rpgpve_game run summon wither -20000 -4 0 {DeathLootTable:"",CustomName:'{"text":"Wither Lord","bold":true,"color": "dark_green"}',DeathLootTable:"empty",Tags:["RPGPVEMob","Boss","WitherBoss"],Attributes:[{Name:"minecraft:generic.max_health",Base:18000},{Name:"minecraft:generic.armor",Base:120},{Name:"minecraft:generic.attack_damage",Base:230}],PortalCooldown:140,PersistenceRequired:1b,active_effects:[{id:"minecraft:resistance",duration:9999999,ambient:0b,amplifier:6b,hidden_effect:1b}]}
scoreboard players set #BossSpawned Dummy 1
#----------------------------------------#