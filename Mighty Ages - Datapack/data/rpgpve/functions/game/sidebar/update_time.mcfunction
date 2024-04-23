data remove storage rpgpve:sidebar Time
execute store result storage rpgpve:sidebar Time.Seconds int 1 run scoreboard players get #RPGPVESeconds Dummy
execute store result storage rpgpve:sidebar Time.Minutes int 1 run scoreboard players get #RPGPVEMinutes Dummy

function rpgpve:game/sidebar/time/update with storage rpgpve:sidebar Time