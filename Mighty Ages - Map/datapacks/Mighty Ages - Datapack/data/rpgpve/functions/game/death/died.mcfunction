tag @s add Eliminated

tag @s add NewDead

gamemode spectator

particle block redstone_block ~ ~ ~ 1 1 1 0.1 80 force

title @s title {"text":"You Died!","color":"red"}
title @s subtitle {"text":"You can now pray for your mate...","color":"gray"}

scoreboard players operation @s Health = @s MaxHealth

scoreboard players set #AttackerExists Temp 0
execute on attacker run scoreboard players set #AttackerExists Temp 1

execute if score #AttackerExists Temp matches 0 unless score @s Fall matches 1.. unless score @s Fire matches 1.. run function rpgpve:game/death/messages/died
execute if score #AttackerExists Temp matches 0 if score @s Fall matches 1.. unless score @s Fire matches 1.. run function rpgpve:game/death/messages/fell
execute if score #AttackerExists Temp matches 0 unless score @s Fall matches 1.. if score @s Fire matches 1.. run function rpgpve:game/death/messages/burnt
execute if score #AttackerExists Temp matches 0 if score @s Fall matches 1.. if score @s Fire matches 1.. run function rpgpve:game/death/messages/fell_and_fire

execute if score #AttackerExists Temp matches 1 unless score @s Fall matches 1.. unless score @s Fire matches 1.. run function rpgpve:game/death/messages/died_by_attacker
execute if score #AttackerExists Temp matches 1 if score @s Fall matches 1.. unless score @s Fire matches 1.. run function rpgpve:game/death/messages/fell_by_attacker
execute if score #AttackerExists Temp matches 1 unless score @s Fall matches 1.. if score @s Fire matches 1.. run function rpgpve:game/death/messages/burnt_by_attacker
execute if score #AttackerExists Temp matches 1 if score @s Fall matches 1.. if score @s Fire matches 1.. run function rpgpve:game/death/messages/fell_and_fire_by_attacker

execute if score Difficulty GameSettings matches 2 run function rpgpve:game/difficulty/hard

# check if game end
execute store result score #TotalPlayersCount Temp if entity @a[tag=IsInRPGPVEGame]
execute store result score #DeadPlayersCount Temp if entity @a[tag=IsInRPGPVEGame,tag=Eliminated]
execute if score #DeadPlayersCount Temp >= #TotalPlayersCount Temp run function rpgpve:game/death/game_end

tag @s remove NewDead