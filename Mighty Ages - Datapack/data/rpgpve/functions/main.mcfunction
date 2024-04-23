# Modules
execute if score #RPGPVEGameState Dummy matches 1.. in rpgpve:rpgpve_game run function rpgpve:game/main
execute unless score #RPGPVEGameState Dummy matches 1.. run function rpgpve:lobby/tick
function rpgpve:npcs/main
function rpgpve:menus/main

# Health Regeneration
scoreboard players remove @a HPRegenTimer 1
execute as @a[scores={HPRegenTimer=..0}] unless score @s Health >= @s MaxHealth run function rpgpve:stats/regen/health

# Mana Regeneration
scoreboard players remove @a SPRegenTimer 1
execute as @a[scores={SPRegenTimer=..0}] unless score @s SkillPoint >= @s MaxSkillPoint run function rpgpve:stats/regen/mana

# Dropped event
execute as @a[tag=IsInRPGPVEGame] if score @s Dropped matches 1.. run function rpgpve:items/give_back_items/dropped

# Kill Timer
execute as @e[type=#rpgpve:has_kill_timer,scores={KillTimer=1..},tag=KillTimer] run function rpgpve:stats/kill_timer

# Custom Commands
execute as @a[scores={ToggleMusic=1..}] at @s run function rpgpve:toggle_music
scoreboard players enable @a ToggleMusic

# Timers
scoreboard players add #5Sec Dummy 1
execute if score #5Sec Dummy matches 100.. run scoreboard players set #5Sec Dummy 0

scoreboard players add #10Sec Dummy 1
execute if score #10Sec Dummy matches 200.. run scoreboard players set #10Sec Dummy 0

scoreboard players add #100Sec Dummy 1
execute if score #100Sec Dummy matches 2000.. run scoreboard players set #100Sec Dummy 0


# Join Game
execute as @a[scores={JoinGame=1..}] run function rpgpve:game/start_game/rejoined

scoreboard players reset @a Walk
scoreboard players reset @a Sprint

