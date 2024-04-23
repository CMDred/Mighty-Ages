#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
playsound entity.allay.hurt master @a[distance=..20] ~ ~ ~ 1 2
playsound entity.ghast.shoot master @a[distance=..20] ~ ~ ~ 2 1
particle flame ~ ~2 ~ 0.5 0.5 0.5 0.1 10 force
scoreboard players set #Reach Dummy -1
summon zombie ~ ~0.6 ~ {DeathLootTable:"",NoAI:1b,NoGravity:1b,Silent:1b,active_effects:[{id:"minecraft:invisibility",ambient:0b,show_particles:0b,duration:99999,amplifier:0b}],Tags:["MageProjectile","NewProjectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,components:{"minecraft:profile":{name:"",id:[I;2092262374,-384086158,-1374984850,-1102389164],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzYyZjU4ZDU1NWQ4NGUwMjEyZjhjZDE0YTQ2MTNmYjI2N2FlNzQ0MWQzZmNjYzcwZTk4YmU3NTE5ZTIzMTMxNiJ9fX0="}]}}}]}
tp @e[type=zombie,tag=NewProjectile,limit=1] ~ ~ ~ facing entity @s feet
execute store result score @e[type=zombie,tag=NewProjectile,limit=1] Dummy run attribute @e[type=#rpgpve:has_health_bar,tag=Mage,sort=nearest,limit=1] generic.attack_damage get
tag @e remove NewProjectile
#----------------------------------------#
