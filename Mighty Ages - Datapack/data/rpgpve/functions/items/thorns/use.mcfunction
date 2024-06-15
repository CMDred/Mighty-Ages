item modify entity @s weapon.mainhand rpgpve:remove_one

scoreboard players set @s ThornsCooldown 200

tellraw @s [{"text":"","color":"gray"},{"text":"THORNS!","color": "red","bold": true},{"text":" You taunted mobs towards you!"}]
execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob,distance=..15] run function rpgpve:game/aggro/aggro_closest

playsound minecraft:entity.player.hurt_sweet_berry_bush player @s ~ ~ ~ 2 1.5 0
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1.2 1 0