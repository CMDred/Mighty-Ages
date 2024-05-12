scoreboard players add @s RepellingGauntletTimes 1
scoreboard players set #Final Dummy 190
scoreboard players operation #Final Dummy *= @s RepellingGauntletTimes
scoreboard players add #Final Dummy 100
scoreboard players operation @s RepellingGauntletCost = #Final Dummy
