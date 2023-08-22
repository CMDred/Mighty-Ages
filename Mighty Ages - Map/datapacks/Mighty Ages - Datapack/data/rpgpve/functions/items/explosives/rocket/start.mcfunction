summon zombie ~ ~1.62 ~ {Silent:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",duration:1b,duration:99999,show_particles:0b},{id:"minecraft:invisibility",duration:1b,duration:99999,show_particles:0b}],Tags:["DontRegisterMob","NewExplosive","ExplosiveEntity","Rocket","Motion_target"],NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}
data modify entity @e[type=zombie,tag=NewExplosive,limit=1] ArmorItems[3] set from storage rpgpve:right_click Weapon
playsound entity.firework_rocket.launch master @s ~ ~ ~ 0.5 0
playsound entity.ghast.shoot master @s ~ ~ ~ 0.5 0
scoreboard players operation @e[type=zombie,tag=NewExplosive] PlayerID = @s PlayerID
data modify entity @e[type=zombie,tag=NewExplosive,limit=1] Rotation set from entity @s Rotation
tag @e remove NewExplosive
