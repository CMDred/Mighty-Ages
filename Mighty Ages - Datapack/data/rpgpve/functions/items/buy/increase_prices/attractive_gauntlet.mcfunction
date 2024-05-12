scoreboard players add @s AttractiveGauntletTimes 1
scoreboard players set #Final Dummy 200
scoreboard players operation #Final Dummy *= @s AttractiveGauntletTimes
scoreboard players add #Final Dummy 75
scoreboard players operation @s AttractiveGauntletCost = #Final Dummy
