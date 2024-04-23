scoreboard players operation #BlueHealth Dummy = @p[tag=IsInRPGPVEGame,team=blue] Health
scoreboard players operation #BlueHealth Dummy *= #c100 Constant
execute store result storage rpgpve:sidebar Health.Blue int 1 run scoreboard players operation #BlueHealth Dummy /= @p[tag=IsInRPGPVEGame,team=blue] MaxHealth
function rpgpve:game/sidebar/health/blue/set with storage rpgpve:sidebar Health