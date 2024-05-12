scoreboard players add @s MendingAppleTimes 1
scoreboard players operation #Exponent PowMath = @s MendingAppleTimes
scoreboard players set #InitialPrice Dummy 100
scoreboard players set #Base PowMath 11
scoreboard players set #Scale PowMath 10
function rpgpve:maths/pow/exe
scoreboard players operation #Final PowMath *= #InitialPrice Dummy
scoreboard players operation #Final PowMath /= #Scale PowMath
scoreboard players operation @s MendingAppleCost = #Final PowMath
