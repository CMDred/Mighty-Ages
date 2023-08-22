data remove storage rpgpve:sidebar WavesNumbers
execute store result storage rpgpve:sidebar WavesNumbers.Preparation int 1 run scoreboard players get #CurrentPreparationWave Temp
execute store result storage rpgpve:sidebar WavesNumbers.Battle int 1 run scoreboard players get #CurrentBattleWave Temp

execute if score #RPGPVEGameState Temp matches 1 run function rpgpve:game/sidebar/waves/preparation with storage rpgpve:sidebar WavesNumbers
execute if score #RPGPVEGameState Temp matches 2 run function rpgpve:game/sidebar/waves/battle with storage rpgpve:sidebar WavesNumbers