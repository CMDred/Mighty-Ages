summon armor_stand ~ ~1.62 ~ {Tags:["NewExplosive","ExplosiveEntity","TinyTNT","Motion_target"],Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b}]}
data modify entity @e[type=armor_stand,tag=NewExplosive,limit=1] ArmorItems[3] set from storage rpgpve:right_click Weapon
scoreboard players set #MotSpeed Temp 170
scoreboard players set @e[type=armor_stand,tag=NewExplosive] Attack1Delay 80
scoreboard players operation @e[type=armor_stand,tag=NewExplosive] PlayerID = @s PlayerID
tag @e remove NewExplosive
function rpgpve:motion/motion_1
playsound entity.tnt.primed master @s ~ ~ ~ 0.5 1
