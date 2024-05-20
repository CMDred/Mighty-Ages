tag @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=5..15] add Motion_target
scoreboard players set #MotSpeed Dummy 2600
playsound entity.allay.ambient_with_item master @s ~ ~ ~ 1 2
execute at @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..15] run particle dust{color:[0.129d,0.545d,0.682d],scale:1} ~ ~ ~ 0.8 0.05 0.8 0.1 20 normal
execute as @e[type=#rpgpve:has_health_bar,tag=Motion_target] at @s facing entity @p eyes positioned ^ ^ ^ rotated ~ -15 run function rpgpve:motion/motion

scoreboard players set @s AttractiveGauntletTimer 101
tellraw @s [{"text":"","color":"gray"},{"text":"GAUNTLET!","color": "aqua","bold": true},{"text":" Your attractive gauntlet granted you +20 physic damage!"}]