scoreboard players operation #BlueHealth Temp = @p[tag=IsInRPGPVEGame,team=blue] Health
scoreboard players operation #BlueHealth Temp *= #c100 Constant
execute store result storage rpgpve:sidebar Health.Blue int 1 run scoreboard players operation #BlueHealth Temp /= @p[tag=IsInRPGPVEGame,team=blue] MaxHealth
function rpgpve:game/sidebar/health/blue/set with storage rpgpve:sidebar Health