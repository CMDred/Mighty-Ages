execute store result score @s PlayerID run scoreboard players add #Global PlayerID 1
function rpgpve:stats/base_stats

tellraw @s {"text":"-------------------------------","color":"dark_aqua","bold": true}
tellraw @s [{"text":"     Welcome to ","color":"gold"},{"text":"Mighty Ages","color":"dark_aqua"},{"text":"!     \n"},{"text":"\nExecute"},{"text":" /trigger HostRPGPVEGame ","color":"gray","italic":true},{"text":"to host a game, then"},{"text":" /trigger StartRPGPVEGame ","color":"gray","italic":true},{"text":"when everyone joined!"}]
tellraw @s [{"text":"\nBe sure to explore the lobby and read the small info first!","color":"aqua"}]
tellraw @s {"text":"-------------------------------","color":"dark_aqua","bold": true}

playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 0.5 0
playsound entity.player.levelup master @s ~ ~ ~ 1 2 0