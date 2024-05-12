scoreboard players set #Param1 Dummy 40
scoreboard players set #Scale1 Dummy 10
scoreboard players set #Param2 Dummy 3000
scoreboard players set #Scale2 Dummy 10
scoreboard players add @s FireResistanceTimes 1
scoreboard players operation in SqrtMath = @s FireResistanceTimes
scoreboard players operation in SqrtMath *= #Param1 Dummy
scoreboard players operation in SqrtMath /= #Scale1 Dummy
function rpgpve:maths/sqrt/exe
scoreboard players operation #Final Dummy = out SqrtMath
scoreboard players operation #Final Dummy *= #Param2 Dummy
scoreboard players operation #Final Dummy /= #Scale2 Dummy
scoreboard players operation #Final Dummy /= #c100 Constant
scoreboard players add #Final Dummy 120
scoreboard players operation @s FireResistanceCost = #Final Dummy
