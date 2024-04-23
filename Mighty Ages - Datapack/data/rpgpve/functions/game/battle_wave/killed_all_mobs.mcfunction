#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
execute if score #CurrentBattleWave Dummy matches ..49 run tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"All mobs were killed! Starting preparation wave."}]

execute unless score #CurrentBattleWave Dummy matches ..49 run tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"[","color":"gray"},{"text":"Mighty Ages","color":"red","bold":true},{"text":"] ","color":"gray"},{"text":"THE ENDER DRAGON IS NO MORE!","color":"yellow"}]

schedule function rpgpve:game/battle_wave/summon_end_firework 0.5s append
schedule function rpgpve:game/battle_wave/summon_end_firework 1s append
schedule function rpgpve:game/battle_wave/summon_end_firework 1.5s append
schedule function rpgpve:game/battle_wave/summon_end_firework 2s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 0.1s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 0.2s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 0.3s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 0.4s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 0.6s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 0.7s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 0.8s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 0.9s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 1.1s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 1.2s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 1.3s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 1.4s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 1.6s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 1.7s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 1.8s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 1.9s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 2.1s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 2.2s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 2.3s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 2.4s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 2.2s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 2.6s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 2.7s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 2.8s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 2.9s append
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/battle_wave/summon_end_firework 3s append
scoreboard players set #RPGPVEGameState Dummy 1
schedule function rpgpve:game/start_state 2s
#----------------------------------------#
