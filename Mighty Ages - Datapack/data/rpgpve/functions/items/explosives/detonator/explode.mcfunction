scoreboard players operation #Search PlayerID = @s PlayerID
execute as @a if score @s PlayerID = #Search PlayerID run tag @s add Attacker

scoreboard players set #DamageDealt Dummy 70
scoreboard players set #DamageTypeDealt Dummy 101

execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..8] at @s run function rpgpve:items/damage
scoreboard players set @a[tag=!Eliminated,distance=..8] ApplyPhysicDamage 70
playsound entity.generic.explode master @a[distance=..20] ~ ~ ~ 0.5 1
particle explosion_emitter ~ ~ ~ 1 1 1 0.1 5 force
kill @s