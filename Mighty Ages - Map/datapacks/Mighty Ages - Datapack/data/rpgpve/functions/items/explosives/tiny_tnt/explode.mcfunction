playsound entity.generic.explode master @a[distance=..20] ~ ~ ~ 0.5 2
particle explosion ~ ~ ~ 0.5 0.5 0.5 0.1 5 force

scoreboard players operation #Search PlayerID = @s PlayerID
execute as @a if score @s PlayerID = #Search PlayerID run tag @s add Attacker
scoreboard players set #DamageDealt Temp 20
scoreboard players set #DamageTypeDealt Temp 101
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..5] at @s run function rpgpve:items/damage

scoreboard players set @a[tag=!Eliminated,distance=..5] ApplyPhysicDamage 20

kill @s
