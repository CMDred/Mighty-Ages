tp @s ^ ^ ^0.9
particle smoke ^ ^0.4 ^-1 0.1 0.1 0.1 0.1 20 force
particle dust 0.647 0.012 0.012 0.4 ^ ^0.4 ^-1 0.2 0.2 0.2 0.1 80 force

execute unless block ~ ~1 ~ #rpgpve:allowed positioned ~ ~1 ~ run function rpgpve:items/explosives/rocket/explode
execute if entity @e[type=#rpgpve:has_health_bar,tag=!ExplosiveEntity,dx=1] run function rpgpve:items/explosives/rocket/explode