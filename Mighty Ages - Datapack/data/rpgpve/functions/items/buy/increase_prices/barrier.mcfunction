scoreboard players set #Param1 Dummy 20000
scoreboard players set #Scale1 Dummy 10
scoreboard players set #Param2 Dummy 200
scoreboard players set #Scale2 Dummy 10
scoreboard players add @s BarrierTimes 1
scoreboard players operation in SqrtMath = @s BarrierTimes
scoreboard players operation in SqrtMath *= #Param1 Dummy
scoreboard players operation in SqrtMath /= #Scale1 Dummy
function rpgpve:maths/sqrt/exe
scoreboard players operation #Final Dummy = out SqrtMath
scoreboard players operation #Final Dummy *= #Param2 Dummy
scoreboard players operation #Final Dummy /= #Scale2 Dummy
scoreboard players operation #Final Dummy /= #c100 Constant
scoreboard players add #Final Dummy 200
scoreboard players operation @s BarrierCost = #Final Dummy
