#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["SDDamageOrb","NewOrb"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2092262374,-384086158,-1374984850,-1102389164],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc2N2EwY2FjZGQ3MzE2ZDQwZTY5ZjZiYjkyM2NiNmI4YmYyZDgyNDk5MThkOGQxYjk0ZjJiZjQ2OWQ1Y2VmYyJ9fX0="}]}}}}]}
execute as @e[type=armor_stand,tag=NewOrb] store result score @s Temp run scoreboard players add #OrbSpeed Temp 1
tag @e remove NewOrb
particle flash ~ ~ ~ 0.2 0.2 0.2 0.1 20 force
execute as @a[tag=IsInRPGPVEGame] at @s run playsound block.bone_block.place master @s ~ ~ ~ 0.8 1
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.phantom.death master @s ~ ~ ~ 0.4 2
data modify entity @s Glowing set value 0b
tp @s ~ ~-100 ~
kill @s
#----------------------------------------#
