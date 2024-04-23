#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
execute if score #CurrentBattleWave Dummy matches 0..9 in rpgpve:rpgpve_game run summon firework_rocket 0 35 0 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{"fireworks":{explosions:[{colors:[I;1810715],fade_colors:[I;1676302,4312372]}]}}}}

execute if score #CurrentBattleWave Dummy matches 10..19 in rpgpve:rpgpve_game run summon firework_rocket -10000 35 0 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{"fireworks":{explosions:[{colors:[I;16712708],fade_colors:[I;5048328,3677968]}]}}}}

execute if score #CurrentBattleWave Dummy matches 20..29 in rpgpve:rpgpve_game run summon firework_rocket -15000 25 0 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{"fireworks":{explosions:[{colors:[I;5285375],fade_colors:[I;985165,8316927]}]}}}}

execute if score #CurrentBattleWave Dummy matches 30..39 in rpgpve:rpgpve_game run summon firework_rocket -20000 -35 -5 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{"fireworks":{explosions:[{colors:[I;7171437],fade_colors:[I;15992840,583655]}]}}}}

execute if score #CurrentBattleWave Dummy matches 40..49 in the_end run summon firework_rocket 0 55 0 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{"fireworks":{explosions:[{colors:[I;4065335],fade_colors:[I;3867671,14412685]}]}}}}

execute if score #CurrentBattleWave Dummy matches 50 in the_end run summon firework_rocket 0 55 0 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{"fireworks":{explosions:[{colors:[I;1810715],fade_colors:[I;1676302,4312372]}]}}}}
execute if score #CurrentBattleWave Dummy matches 50 in the_end run summon firework_rocket 0 55 0 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{"fireworks":{eplosions:[{colors:[I;16712708],fade_colors:[I;5048328,13796310]}]}}}}
execute if score #CurrentBattleWave Dummy matches 50 in the_end run summon firework_rocket 0 55 0 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{"fireworks":{explosions:[{colors:[I;5285375],fade_colors:[I;985165,8316927]}]}}}}
execute if score #CurrentBattleWave Dummy matches 50 in the_end run summon firework_rocket 0 55 0 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{"fireworks":{explosions:[{colors:[I;7171437],fade_colors:[I;15992840,583655]}]}}}}
execute if score #CurrentBattleWave Dummy matches 50 in the_end run summon firework_rocket 0 55 0 {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,components:{"fireworks":{explosions:[{colors:[I;4065335],fade_colors:[I;3867671,14412685]}]}}}}

execute unless score #CurrentBattleWave Dummy matches 30..39 as @e[type=firework_rocket,tag=!Tp,limit=1] at @s run spreadplayers ~ ~ 1 8 under 50 false @s 
execute if score #CurrentBattleWave Dummy matches 30..39 as @e[type=firework_rocket,tag=!Tp,limit=1] at @s run spreadplayers ~ ~ 1 8 under -35 false @s 

# execute as @e[type=firework_rocket,tag=!Tp] store result entity @s FireworksItem.components."fireworks".explosions[0].shape run ...
execute as @e[type=firework_rocket,tag=!Tp] store result entity @s FireworksItem.components."fireworks".explosions[0].has_flicker int 1 run random value 0..1
execute as @e[type=firework_rocket,tag=!Tp] store result entity @s FireworksItem.components."fireworks".explosions[0].has_trail int 1 run random value 0..1
execute as @e[type=firework_rocket,tag=!Tp] store result entity @s LifeTime int 1 run random value 25..45

tag @e[type=firework_rocket] add Tp
#----------------------------------------#
