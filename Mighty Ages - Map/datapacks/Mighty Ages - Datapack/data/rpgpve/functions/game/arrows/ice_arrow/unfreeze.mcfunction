#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
effect clear @s slowness
data modify entity @s NoAI set value 0b
particle block minecraft:ice ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
playsound block.glass.break master @a[distance=..30] ~ ~ ~ 0.5 1 0
kill @e[type=armor_stand,tag=Freeze,distance=..1.5]
scoreboard players reset @s IceArrowFreezeTime
#----------------------------------------#
