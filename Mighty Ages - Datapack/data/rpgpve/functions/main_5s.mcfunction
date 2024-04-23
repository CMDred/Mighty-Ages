schedule function rpgpve:main_5s 5s

# Resistance
effect give @a resistance 7 4 true
execute as @a run attribute @s generic.armor base set -1000

# Saturation
effect give @a saturation 3 10 true

# lobby speed & res
execute in overworld positioned 0 80 0 run effect give @a[distance=..60] speed infinite 3 true
execute in overworld positioned 0 80 0 run effect give @a[distance=..60] resistance infinite 5 true