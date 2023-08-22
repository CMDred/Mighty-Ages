#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
summon skeleton ~ ~ ~ {CustomName:'{"text":"Evoker"}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{CustomModelData:1}},{}],DeathLootTable:"rpgpve:mob_gold_drops/evoker",Tags:["RPGPVEMob","Evoker","SpellCasting"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6118749}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6118749}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6118749}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2092262374,-384086158,-1374984850,-1102389164],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2JiMWVlZjk4ZWI4ODgzNGY1ZGFmN2VlYjVlM2JjYjc5M2RlY2ExNzE1OTY0MWJlNjRmNWQ1ODM3YWRiMjBjNSJ9fX0="}]}}}}],Attributes:[{Name:"minecraft:generic.max_health",Base:1100},{Name:"minecraft:generic.attack_damage",Base:60},{Name:"minecraft:generic.armor",Base:80}],PortalCooldown:160,PersistenceRequired:1b}
execute as @e[type=skeleton,tag=Evoker] unless score @s Attack1Delay matches 1.. run scoreboard players set @s Attack1Delay 670
#----------------------------------------#
