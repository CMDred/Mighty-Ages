data modify entity @s Fire set value 200s 
particle large_smoke ~ ~10 ~ 0.5 0.5 0.5 0.01 10 force
summon fireball ~ ~10 ~ {Motion:[0.0,-1.0,0.0],ExplosionPower:0} 
tag @s add Affected