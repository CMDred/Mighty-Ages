data remove storage rpgpve:sidebar Time
execute store result storage rpgpve:sidebar Time.Seconds int 1 run scoreboard players get #RPGPVESeconds Temp
execute store result storage rpgpve:sidebar Time.Minutes int 1 run scoreboard players get #RPGPVEMinutes Temp

function rpgpve:game/sidebar/time/update with storage rpgpve:sidebar Time