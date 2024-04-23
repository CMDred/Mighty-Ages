#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------START GAME---------------#
# Waves
scoreboard players set #CurrentBattleWave Dummy 0
scoreboard players set #CurrentPreparationWave Dummy 0

# GameSettings
scoreboard players set @a LostCoins 0

# Time
scoreboard players set #RPGPVETicks Dummy 0
scoreboard players set #RPGPVESeconds Dummy 0
scoreboard players set #RPGPVEMinutes Dummy 0
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
scoreboard players set #RPGPVEGameState Dummy 1
function rpgpve:game/start_state
#----------------------------------------#
