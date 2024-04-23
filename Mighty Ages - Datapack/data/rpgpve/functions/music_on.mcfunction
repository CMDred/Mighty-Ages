execute if score #RPGPVEGameState Dummy matches 1 unless score #BossFight Dummy matches 1 run playsound rpgpve:music.wave.preparation record @s ~ ~ ~ 0.8 1 1
execute if score #RPGPVEGameState Dummy matches 2 unless score #BossFight Dummy matches 1 run playsound rpgpve:music.wave.battle record @s ~ ~ ~ 0.8 1 1
execute if score #BossFight Dummy matches 1 run playsound rpgpve:music.wave.boss record @s ~ ~ ~ 0.8 1 1

playsound block.note_block.pling master @s ~ ~ ~ 1 2 1
tag @s remove DontPlayMusic
tellraw @s {"text":"Game music is now On!","color":"green"}