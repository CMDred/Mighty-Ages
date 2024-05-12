scoreboard players add @s StrengthTimes 1
scoreboard players operation #Exponent PowMath = @s StrengthTimes
scoreboard players set #InitialPrice Dummy 400
scoreboard players set #Base PowMath 111
scoreboard players set #Scale PowMath 100
function rpgpve:maths/pow/exe
scoreboard players operation #Final PowMath *= #InitialPrice Dummy
scoreboard players operation #Final PowMath /= #Scale PowMath
scoreboard players operation @s StrengthCost = #Final PowMath
