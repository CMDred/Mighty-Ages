data remove storage rpgpve:sidebar WavesNumbers
execute store result storage rpgpve:sidebar WavesNumbers.Preparation int 1 run scoreboard players get #CurrentPreparationWave Dummy
execute store result storage rpgpve:sidebar WavesNumbers.Battle int 1 run scoreboard players get #CurrentBattleWave Dummy

execute if score #RPGPVEGameState Dummy matches 1 run function rpgpve:game/sidebar/waves/preparation with storage rpgpve:sidebar WavesNumbers
execute if score #RPGPVEGameState Dummy matches 2 run function rpgpve:game/sidebar/waves/battle with storage rpgpve:sidebar WavesNumbers