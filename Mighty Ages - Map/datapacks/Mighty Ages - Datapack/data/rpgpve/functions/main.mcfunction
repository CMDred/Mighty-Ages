# Modules
execute if score #RPGPVEGameState Temp matches 1.. in rpgpve:rpgpve_game run function rpgpve:game/main
execute unless score #RPGPVEGameState Temp matches 1.. run function rpgpve:lobby/tick
function rpgpve:npcs/main
function rpgpve:menu/main

# Kill Timer
execute as @e[type=#rpgpve:has_kill_timer,scores={KillTimer=1..},tag=KillTimer] run function rpgpve:stats/kill_timer

# Custom Commands
execute as @a[scores={ToggleMusic=1..}] at @s run function rpgpve:toggle_music
scoreboard players enable @a ToggleMusic

# Timers
scoreboard players add #5Sec Temp 1
execute if score #5Sec Temp matches 100.. run scoreboard players set #5Sec Temp 0

scoreboard players add #10Sec Temp 1
execute if score #10Sec Temp matches 200.. run scoreboard players set #10Sec Temp 0

scoreboard players add #100Sec Temp 1
execute if score #100Sec Temp matches 2000.. run scoreboard players set #100Sec Temp 0

scoreboard players reset @a Walk
scoreboard players reset @a Sprint