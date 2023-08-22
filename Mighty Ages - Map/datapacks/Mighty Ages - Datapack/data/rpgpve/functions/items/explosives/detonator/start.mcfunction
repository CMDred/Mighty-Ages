summon armor_stand ~ ~1.62 ~ {CustomNameVisible:1b,Tags:["NewExplosive","ExplosiveEntity","Detonator","Motion_target"],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}
data modify entity @e[type=armor_stand,tag=NewExplosive,limit=1] ArmorItems[3] set from storage rpgpve:right_click Weapon
scoreboard players set #MotSpeed Temp 360

execute store result score #rand Temp run random value 60..100

scoreboard players operation @e[type=armor_stand,tag=NewExplosive] Attack1Delay = #rand Temp

scoreboard players operation @e[type=armor_stand,tag=NewExplosive] PlayerID = @s PlayerID

playsound entity.tnt.primed master @s ~ ~ ~ 0.5 1

tag @e remove NewExplosive

function rpgpve:motion/motion_1