#------------------SETUP-------------------#
execute store result score @s ArrowDamage run scoreboard players get @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,sort=nearest,limit=1] DamageTaken
execute unless score @s ArrowDamage matches 1.. run scoreboard players set @s ArrowDamage 5
tag @s add MobArrow
execute as @e[type=#rpgpve:has_health_bar,sort=nearest,tag=SpellCasting,limit=1] at @s run function rpgpve:game/battle_wave/monsters/spells/list
data merge entity @s {damage:1d,PierceLevel:0b}
tag @e remove Mob
tag @s add GotStats
#------------------------------------------#