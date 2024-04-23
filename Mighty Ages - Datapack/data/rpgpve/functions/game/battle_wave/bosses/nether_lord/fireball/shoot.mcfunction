#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute if score @s Date matches ..0 store result score #RNG Dummy run random value 1..4
execute if score @s Date matches ..0 if score #RNG Dummy matches 1 as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/bosses/nether_lord/tellraws/abilities/fireball/random

kill @e[type=fireball,tag=NetherLordFireball]
scoreboard players set #MotSpeed Dummy 3000

execute if entity @a[tag=IsInRPGPVEGame,tag=!Eliminated,team=red] run summon fireball ~ ~ ~ {Tags:["NetherLordFireball","Motion_target"],ExplosionPower:5}
execute as @e[type=fireball,tag=Motion_target] at @s facing entity @a[tag=IsInRPGPVEGame,tag=!Eliminated,team=red,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=fireball,tag=Motion_target] run function rpgpve:game/battle_wave/bosses/nether_lord/fireball/random_rot
execute as @e[type=fireball,tag=Motion_target] at @s rotated as @s run function rpgpve:motion/motion

execute if entity @a[tag=IsInRPGPVEGame,tag=!Eliminated,team=blue] run summon fireball ~ ~ ~ {Tags:["NetherLordFireball","Motion_target"],ExplosionPower:5}
execute as @e[type=fireball,tag=Motion_target] at @s facing entity @a[tag=IsInRPGPVEGame,tag=!Eliminated,team=blue,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=fireball,tag=Motion_target] run function rpgpve:game/battle_wave/bosses/nether_lord/fireball/random_rot
execute as @e[type=fireball,tag=Motion_target] at @s rotated as @s run function rpgpve:motion/motion

scoreboard players reset @s Attack1Timer
#----------------------------------------#
