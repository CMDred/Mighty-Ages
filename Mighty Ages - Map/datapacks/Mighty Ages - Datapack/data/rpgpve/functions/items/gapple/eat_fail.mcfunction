effect clear @s absorption
effect clear @s regeneration

execute if score @s GappleTimer matches 1..20 run effect give @s regeneration 1 0
execute if score @s GappleTimer matches 21..40 run effect give @s regeneration 2 0
execute if score @s GappleTimer matches 41..60 run effect give @s regeneration 3 0
execute if score @s GappleTimer matches 61..80 run effect give @s regeneration 4 0
execute if score @s GappleTimer matches 81..100 run effect give @s regeneration 5 0
execute if score @s GappleTimer matches 101..120 run effect give @s regeneration 6 0
execute if score @s GappleTimer matches 121..140 run effect give @s regeneration 7 0
execute if score @s GappleTimer matches 141..160 run effect give @s regeneration 8 0
execute if score @s GappleTimer matches 161..180 run effect give @s regeneration 9 0
execute if score @s GappleTimer matches 181..200 run effect give @s regeneration 10 0

execute if entity @s[gamemode=!creative] run loot give @s loot rpgpve:items/utilities/golden_apple

playsound entity.allay.item_taken master @s ~ ~ ~ 3 2


tellraw @s ["",{"text":"FAIL!","color":"red","bold":true},{"text":" You already have a ","color":"white","bold":false},{"text":"Golden Apple","color":"gold","bold":false},{"text":" active!","color":"white","bold":false}]