scoreboard players operation #Search PlayerID = @s PlayerID
execute as @a if score @s PlayerID = #Search PlayerID run tag @s add Attacker

scoreboard players set #DamageDealt Dummy 130
scoreboard players set #DamageTypeDealt Dummy 101

execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..6] at @s run function rpgpve:items/damage

scoreboard players set @a[tag=!Eliminated,distance=..6] ApplyPhysicDamage 130

playsound entity.generic.explode master @a[distance=..20] ~ ~ ~ 0.5 0
particle explosion_emitter ~ ~ ~ 2 2 2 0.1 5 force
particle lava ~ ~ ~ 1 1 1 0.1 30 force

tp @s ~ ~-100 ~
kill @s