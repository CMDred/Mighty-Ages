stopsound @s * rpgpve:music.wave.preparation
stopsound @s * rpgpve:music.wave.battle
stopsound @s * rpgpve:music.wave.boss

playsound block.note_block.pling master @s ~ ~ ~ 1 2 1
tag @s add DontPlayMusic
tag @s add Changed
tellraw @s {"text":"Game music is now Off!","color":"green"}