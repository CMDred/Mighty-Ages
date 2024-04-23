#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------WAVE START----------------#
scoreboard players add #CurrentPreparationWave Dummy 1
tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"The "},{"text":"Preparation Wave #","color":"dark_aqua","bold": false},{"score":{"name": "#CurrentPreparationWave","objective": "Dummy"},"bold": false,"color": "dark_aqua"},{"text":" has started ! Press the button on the center of the map to start the battle wave!"}]
stopsound @a * rpgpve:music.wave.preparation
stopsound @a * rpgpve:music.wave.battle
execute as @a[tag=IsInRPGPVEGame] at @s run playsound minecraft:block.amethyst_block.place master @s ~ ~ ~ 10 0 1
execute as @a[tag=IsInRPGPVEGame,tag=!DontPlayMusic] at @s run playsound rpgpve:music.wave.preparation record @s ~ ~ ~ 0.8 1 1

# place shop portal
execute in rpgpve:rpgpve_game run fill -50 35 -2 -50 38 2 minecraft:end_gateway
execute in rpgpve:rpgpve_game run fill -50 39 1 -50 39 -1 end_gateway

execute in rpgpve:rpgpve_game run fill -10050 35 1 -10050 39 -1 minecraft:end_gateway
execute in rpgpve:rpgpve_game run fill -10050 38 -2 -10050 35 -2 minecraft:end_gateway

execute in rpgpve:rpgpve_game run fill -15050 35 2 -15050 38 -2 end_gateway
execute in rpgpve:rpgpve_game run fill -15050 39 1 -15050 39 -1 end_gateway

execute in rpgpve:rpgpve_game run fill -19992 3 43 -19994 5 43 minecraft:end_gateway

execute in the_end run fill 1 43 -1 -1 43 1 end_gateway

# Summon Button at center
kill @e[type=text_display,tag=GameHologram]
execute if score #CurrentBattleWave Dummy matches 0..9 in rpgpve:rpgpve_game run setblock 3 31 -11 stone_button[face=wall,facing=south]
execute if score #CurrentBattleWave Dummy matches 0..9 in rpgpve:rpgpve_game run summon text_display 3 32 -10 {Tags:["GameHologram","ButtonPress"],text:'{"text":"Press to start the next battle wave!","color":"green","underlined": true}',billboard:'center'}

execute if score #CurrentBattleWave Dummy matches 10..19 in rpgpve:rpgpve_game run setblock -9998 31 -12 minecraft:crimson_button[face=wall,facing=south]
execute if score #CurrentBattleWave Dummy matches 10..19 in rpgpve:rpgpve_game run summon text_display -9998 32 -12 {Tags:["GameHologram","ButtonPress"],text:'{"text":"Press to start the next battle wave!","color":"dark_red","underlined": true}',billboard:'center'}

execute if score #CurrentBattleWave Dummy matches 20..29 in rpgpve:rpgpve_game run setblock -14997 25 -10 minecraft:warped_button[face=wall,facing=south]
execute if score #CurrentBattleWave Dummy matches 20..29 in rpgpve:rpgpve_game run summon text_display -14997 26 -10 {Tags:["GameHologram","ButtonPress"],text:'{"text":"Press to start the next battle wave!","color":"dark_aqua","underlined": true}',billboard:'center'}

execute if score #CurrentBattleWave Dummy matches 30..39 in rpgpve:rpgpve_game run setblock -19994 7 -26 minecraft:crimson_button[face=wall,facing=south]
execute if score #CurrentBattleWave Dummy matches 30..39 in rpgpve:rpgpve_game run summon text_display -19994 8 -26 {Tags:["GameHologram","ButtonPress"],text:'{"text":"Press to start the next battle wave!","color":"gold","underlined": true}',billboard:'center'}

execute if score #CurrentBattleWave Dummy matches 40..49 in the_end run setblock -4 44 -7 minecraft:cherry_button[face=wall,facing=east]
execute if score #CurrentBattleWave Dummy matches 40..49 in the_end run summon text_display -4 45 -7 {Tags:["GameHologram","ButtonPress"],text:'{"text":"Press to start the next battle wave!","color":"dark_purple","underlined": true}',billboard:'center'}
execute if score #CurrentBattleWave Dummy matches 40..49 in the_end run summon text_display 0 46 0 {Tags:["GameHologram","Shop"],text:'["",{"text":"|| ","color":"dark_purple","obfuscated": true},{"text":" SHOP ","color":"light_purple","bold":true},{"text":" |","color":"dark_purple","obfuscated": true}]',billboard:'center',transformation:[3f,0f,0f,0f,0f,3f,0f,0f,0f,0f,3f,0f,0f,0f,0f,1f]}

# difficulty
execute if score Difficulty GameSettings matches 0 if entity @a[tag=Eliminated] run function rpgpve:game/difficulty/easy
execute if score Difficulty GameSettings matches 1 if entity @a[tag=Eliminated] run function rpgpve:game/difficulty/medium

# Reset temp upgrades
scoreboard players set @a GoldTelekinesis 0
scoreboard players set @a Speed 0
scoreboard players set @a Strength 0
scoreboard players set @a FireRes 0
scoreboard players set @a ProjProt 0
scoreboard players set @a Shield 0

clear @a[tag=IsInRPGPVEGame] shield
effect clear @a[tag=IsInRPGPVEGame] speed
effect clear @a[tag=IsInRPGPVEGame] fire_resistance

effect give @a[tag=IsInRPGPVEGame,tag=!Eliminated] minecraft:speed infinite 1 true

# Unlock Tellraws
execute as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/preparation_wave/unlock_tellraws
execute in rpgpve:rpgpve_game run schedule function rpgpve:game/start_game/reload_npcs 2t

# Minecarts
execute in rpgpve:rpgpve_game if score #CurrentBattleWave Dummy matches 30..39 run function rpgpve:game/minecarts/summons

# Records
function rpgpve:game/records/highest_melee/announce
function rpgpve:game/records/longest_bow_shot/announce

scoreboard players reset #BossFightTimer Dummy
scoreboard players reset #DeathTimer Dummy

# Game End
# execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/end_game 60s replace

function rpgpve:game/sidebar/update_all
#----------------------------------------#
