scoreboard players add @s WallBallTimes 1
scoreboard players set #Final Dummy 2
scoreboard players operation #Final Dummy *= @s WallBallTimes
scoreboard players add #Final Dummy 5
scoreboard players operation @s WallBallCost = #Final Dummy
