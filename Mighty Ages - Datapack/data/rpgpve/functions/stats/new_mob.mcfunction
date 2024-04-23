#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#----------------SET STATS-----------------#
function rpgpve:stats/mob_stats
#------------------SETUP-------------------#
# score that says if it got attacked in this tick
scoreboard players set @s DamageTaken 0

tag @s add EditingMob
execute in minecraft:overworld run setblock 700000 2 700000 minecraft:air
execute if entity @s[type=magma_cube,tag=!RPGPVEMob] run tp @s ~ ~-100 ~
execute if entity @s[type=slime,tag=!RPGPVEMob] run tp @s ~ ~-100 ~
#---------------STORE NAME-----------------#
execute unless data entity @s ArmorItems[3].id run item replace entity @s armor.head with turtle_scute[custom_model_data=1] 1
execute in minecraft:overworld run setblock 700000 2 700000 minecraft:oak_sign{front_text:{messages:['{"selector":"@e[type=#rpgpve:has_health_bar,tag=EditingMob,limit=1]"}','{"text":""}','{"text":""}','{"text":""}']}}
execute in minecraft:overworld run data modify entity @s ArmorItems[3].components."minecraft:custom_data".MobName set from block 700000 2 700000 front_text.messages[0]
#-----------------BAR FIX------------------#
execute if entity @s[type=#minecraft:skeletons] if data entity @s HandItems[{id:"minecraft:bow"}] run scoreboard players set @s PhysicRangedPurchased 1
execute if entity @s[tag=VoidCreeper] run scoreboard players set @s PhysicRangedPurchased 1
execute if score @s PhysicRangedPurchased matches 1 if entity @s[tag=!DontRegister] run function rpgpve:stats/bar_fix/add_bar
#------------------STATS-------------------#
execute if data entity @s ArmorItems[0].id run data modify entity @s ArmorItems[0].components."minecraft:custom_data".Unbreakable set value 1b
execute if data entity @s ArmorItems[1].id run data modify entity @s ArmorItems[1].components."minecraft:custom_data".Unbreakable set value 1b
execute if data entity @s ArmorItems[2].id run data modify entity @s ArmorItems[2].components."minecraft:custom_data".Unbreakable set value 1b
execute if data entity @s ArmorItems[3].id run data modify entity @s ArmorItems[3].components."minecraft:custom_data".Unbreakable set value 1b

execute if data entity @s HandItems[0].id run function rpgpve:stats/nullify_mob_weapon_damage

execute store result score @s DamageTaken run attribute @s minecraft:generic.attack_damage base get
execute store result score @s PhysicDefense run attribute @s minecraft:generic.armor base get
execute store result score @s MagicDefense run data get entity @s PortalCooldown

execute store result score @s MaxHealth run attribute @s minecraft:generic.max_health base get
scoreboard players operation @s Health = @s MaxHealth
#---------------HEALTH BAR-----------------#
execute if score @s Health matches ..0 run scoreboard players set @s Health 0
scoreboard players operation #HealthBar Health = @s Health
scoreboard players operation #HealthBar MaxHealth = @s MaxHealth
data modify storage rpgpve:health_bar Name set from entity @s ArmorItems[3].components."minecraft:custom_data".MobName
execute if entity @s[tag=!Boss] run function rpgpve:stats/health_bar/update
#------------------RESET-------------------#
effect give @s resistance infinite 4 true
execute unless score @s PhysicRangedPurchased matches 1 run data merge entity @s {Health:5f,Attributes:[{Name:"minecraft:generic.max_health",Base:5}],CustomNameVisible:1b,ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],HandDropChances:[0.000F,0.000F]}
execute if score @s PhysicRangedPurchased matches 1 run data merge entity @s {CustomName:'{"text":""}',Health:5f,Attributes:[{Name:"minecraft:generic.max_health",Base:5}],CustomNameVisible:0b,ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],HandDropChances:[0.000F,0.000F]}
tag @s remove EditingMob
tag @s add Registered
#------------------------------------------#