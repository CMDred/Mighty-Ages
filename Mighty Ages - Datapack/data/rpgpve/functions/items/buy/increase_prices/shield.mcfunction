scoreboard players set #Param1 Dummy 10000
scoreboard players set #Scale1 Dummy 10
scoreboard players set #Param2 Dummy 100
scoreboard players set #Scale2 Dummy 10
scoreboard players add @s ShieldTimes 1
scoreboard players operation in SqrtMath = @s ShieldTimes
scoreboard players operation in SqrtMath *= #Param1 Dummy
scoreboard players operation in SqrtMath /= #Scale1 Dummy
function rpgpve:maths/sqrt/exe
scoreboard players operation #Final Dummy = out SqrtMath
scoreboard players operation #Final Dummy *= #Param2 Dummy
scoreboard players operation #Final Dummy /= #Scale2 Dummy
scoreboard players operation #Final Dummy /= #c100 Constant
scoreboard players add #Final Dummy 100
scoreboard players operation @s ShieldCost = #Final Dummy
