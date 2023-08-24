#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------START GAME---------------#
# Waves
scoreboard players set #CurrentBattleWave Temp 0
scoreboard players set #CurrentPreparationWave Temp 0

# GameSettings
scoreboard players set @a LostCoins 0

# Time
scoreboard players set #RPGPVETicks Temp 0
scoreboard players set #RPGPVESeconds Temp 0
scoreboard players set #RPGPVEMinutes Temp 0
function rpgpve:game/sidebar/show

# Kill npcs that come later
execute in rpgpve:rpgpve_game run schedule function rpgpve:game/start_game/reload_npcs 2t

# Records
function rpgpve:game/records/reset

# Game State 
# INFO :
# 0 = No game playing 
# 1 = Preparation Wave 
# 2 = Battle Wave 
# 3 = Game ended, win "screen"
scoreboard players set #RPGPVEGameState Temp 1
function rpgpve:game/start_state
#----------------------------------------#
