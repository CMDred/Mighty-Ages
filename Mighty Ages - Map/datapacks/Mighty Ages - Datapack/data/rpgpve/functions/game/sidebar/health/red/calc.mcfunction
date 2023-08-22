scoreboard players operation #RedHealth Temp = @p[tag=IsInRPGPVEGame,team=red] Health
scoreboard players operation #RedHealth Temp *= #c100 Constant
execute store result storage rpgpve:sidebar Health.Red int 1 run scoreboard players operation #RedHealth Temp /= @p[tag=IsInRPGPVEGame,team=red] MaxHealth
function rpgpve:game/sidebar/health/red/set with storage rpgpve:sidebar Health