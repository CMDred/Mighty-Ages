effect clear @s absorption
effect clear @s regeneration

execute if entity @s[gamemode=!creative] run loot give @s loot rpgpve:items/utilities/healing/healing_apple

playsound entity.allay.item_taken master @s ~ ~ ~ 3 2

tellraw @s ["",{"text":"FAIL!","color":"red","bold":true},{"text":" You already have an ","color":"white","bold":false},{"text":"Apple","color":"#cf3a61","bold":false},{"text":" active!","color":"white","bold":false}]