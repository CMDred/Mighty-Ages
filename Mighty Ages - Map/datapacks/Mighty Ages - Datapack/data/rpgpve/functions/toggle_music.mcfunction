stopsound @a * rpgpve:music.wave.preparation
stopsound @a * rpgpve:music.wave.battle
execute unless entity @s[tag=DontPlayMusic,tag=!Changed] run function rpgpve:music_off
execute if entity @s[tag=DontPlayMusic,tag=!Changed] run function rpgpve:music_on
tag @s remove Changed
scoreboard players reset @s ToggleMusic
