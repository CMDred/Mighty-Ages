#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------WAVE START----------------#
scoreboard players reset #MusicLoop Dummy
scoreboard players add #CurrentBattleWave Dummy 1
tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"The "},{"text":"Battle Wave #","color":"red","bold": false},{"score":{"name": "#CurrentBattleWave","objective": "Dummy"},"bold": false,"color": "red"},{"text":" has started!"}]
stopsound @a * rpgpve:music.wave.preparation
stopsound @a * rpgpve:music.wave.battle
execute as @a[tag=IsInRPGPVEGame] at @s run playsound block.fire.extinguish master @s ~ ~ ~ 0.6 2 1
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 1.2 2 1
execute as @a[tag=IsInRPGPVEGame,tag=!DontPlayMusic] at @s run playsound rpgpve:music.wave.battle record @s ~ ~ ~ 0.8 1 1

execute in rpgpve:rpgpve_game positioned -600 30 0 run tag @a[tag=IsInRPGPVEGame,distance=..100] add TPMe
execute if score #CurrentBattleWave Dummy matches 0..9 in rpgpve:rpgpve_game run tp @a[tag=TPme] 0 31 0
execute if score #CurrentBattleWave Dummy matches 11..19 in rpgpve:rpgpve_game run tp @a[tag=TPme] -10000 31 0
execute if score #CurrentBattleWave Dummy matches 21..29 in rpgpve:rpgpve_game run tp @a[tag=TPme] -15000 24 0
execute if score #CurrentBattleWave Dummy matches 31..39 in rpgpve:rpgpve_game run tp @a[tag=TPme] -19993 3 -5
execute if score #CurrentBattleWave Dummy matches 41..50 in the_end run tp @a[tag=TPme] 0 44 6
tag @a remove TPMe

function rpgpve:game/battle_wave/monsters/game_spawn/wave_mobs

# remove shop portal
execute in rpgpve:rpgpve_game run fill -50 35 -2 -50 38 2 minecraft:air
execute in rpgpve:rpgpve_game run fill -50 39 1 -50 39 -1 minecraft:air

execute in rpgpve:rpgpve_game run fill -10050 35 1 -10050 39 -1 minecraft:air
execute in rpgpve:rpgpve_game run fill -10050 38 -2 -10050 35 -2 minecraft:air

execute in rpgpve:rpgpve_game run fill -15050 35 2 -15050 38 -2 minecraft:air
execute in rpgpve:rpgpve_game run fill -15050 39 1 -15050 39 -1 minecraft:air

execute in rpgpve:rpgpve_game run fill -19992 3 43 -19994 5 43 minecraft:air

execute in the_end run fill 1 43 -1 -1 43 1 air


kill @e[type=text_display,tag=GameHologram]

effect clear @a[tag=IsInRPGPVEGame] speed

execute as @a[tag=IsInRPGPVEGame] run function rpgpve:game/battle_wave/give_temp_items

execute as @a[tag=IsInRPGPVEGame] at @s if score #CurrentBattleWave Dummy matches 5 run function rpgpve:game/battle_wave/mini_bosses/warn
execute as @a[tag=IsInRPGPVEGame] at @s if score #CurrentBattleWave Dummy matches 15 run function rpgpve:game/battle_wave/mini_bosses/warn
execute as @a[tag=IsInRPGPVEGame] at @s if score #CurrentBattleWave Dummy matches 25 run function rpgpve:game/battle_wave/mini_bosses/warn
execute as @a[tag=IsInRPGPVEGame] at @s if score #CurrentBattleWave Dummy matches 35 run function rpgpve:game/battle_wave/mini_bosses/warn
execute as @a[tag=IsInRPGPVEGame] at @s if score #CurrentBattleWave Dummy matches 45 run function rpgpve:game/battle_wave/mini_bosses/warn
execute if score #CurrentBattleWave Dummy matches 10 run function rpgpve:game/battle_wave/bosses/nether_lord/start
execute if score #CurrentBattleWave Dummy matches 20 run function rpgpve:game/battle_wave/bosses/spectral_devourer/start
execute if score #CurrentBattleWave Dummy matches 30 run function rpgpve:game/battle_wave/bosses/troll_bros/start
execute if score #CurrentBattleWave Dummy matches 40 run function rpgpve:game/battle_wave/bosses/wither_boss/start
execute if score #CurrentBattleWave Dummy matches 50 run function rpgpve:game/battle_wave/bosses/ender_dragon/start

# Optimise Mode
execute if score Optimise GameSettings matches 1.. if score SharedPurse GameSettings matches 1.. run tellraw @a ["",{"text":"Optimised Mode","color":"green","bold":true},{"text":": You lost ","color":"white"},{"score":{"name":"#SharedPurse","objective": "Dummy"},"color":"gold"},{"text":" coins!"}]
execute if score Optimise GameSettings matches 1.. if score SharedPurse GameSettings matches 1.. run scoreboard players operation @a LostCoins += #SharedPurse Dummy
execute if score Optimise GameSettings matches 1.. if score SharedPurse GameSettings matches 1.. run scoreboard players set #SharedPurse Dummy 0
execute if score Optimise GameSettings matches 1.. unless score SharedPurse GameSettings matches 1.. as @a run function rpgpve:game/battle_wave/optimise_mode_no_shared

execute if score Optimise GameSettings matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ 0.6 0

# Minecarts
execute in rpgpve:rpgpve_game if score #CurrentBattleWave Dummy matches 30..39 run function rpgpve:game/minecarts/summons

# Records
function rpgpve:game/records/highest_melee/save
function rpgpve:game/records/longest_bow_shot/save

function rpgpve:game/sidebar/update_all
#----------------------------------------#
