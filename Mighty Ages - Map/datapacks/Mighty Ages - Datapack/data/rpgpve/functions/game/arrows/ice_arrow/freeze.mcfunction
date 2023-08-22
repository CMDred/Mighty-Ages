#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
effect give @s slowness 99999 10 true
data modify entity @s NoAI set value 1b
particle block minecraft:ice ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
playsound block.glass.place master @a[distance=..30] ~ ~ ~ 0.5 1 0
summon armor_stand ~ ~ ~ {Tags:["Freeze","NewFreeze"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:scute",Count:1b,tag:{CustomModelData:5}}]}
data modify entity @e[type=armor_stand,tag=NewFreeze,limit=1] Rotation set from entity @s Rotation 
tag @e remove NewFreeze
scoreboard players set @s IceArrowFreezeTime 50
execute on attacker run tag @s add ThisPlayer
tellraw @a[tag=ThisPlayer] {"text":"You froze your target!","color":"#74c3ff"}
tellraw @s [{"text":"You were frozen by ","color":"#74c3ff"},{"selector":"@a[tag=ThisPlayer]"}]
tag @a remove ThisPlayer
#----------------------------------------#
