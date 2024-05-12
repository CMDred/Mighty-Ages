scoreboard players add @s ThornsTimes 1
scoreboard players operation #Exponent PowMath = @s ThornsTimes
scoreboard players set #InitialPrice Dummy 75
scoreboard players set #Base PowMath 105
scoreboard players set #Scale PowMath 100
function rpgpve:maths/pow/exe
scoreboard players operation #Final PowMath *= #InitialPrice Dummy
scoreboard players operation #Final PowMath /= #Scale PowMath
scoreboard players operation @s ThornsCost = #Final PowMath
