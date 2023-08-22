execute store result storage rpgpve:sidebar Gold.Red int 1 run scoreboard players get @p[tag=IsInRPGPVEGame,team=red] TotalGold
execute store result storage rpgpve:sidebar Gold.Blue int 1 run scoreboard players get @p[tag=IsInRPGPVEGame,team=blue] TotalGold
execute store result storage rpgpve:sidebar Gold.Shared int 1 run scoreboard players get #SharedPurse Temp

execute if score SharedPurse GameSettings matches 1 run function rpgpve:game/sidebar/gold/shared with storage rpgpve:sidebar Gold
execute unless score SharedPurse GameSettings matches 1 run function rpgpve:game/sidebar/gold/no_shared with storage rpgpve:sidebar Gold