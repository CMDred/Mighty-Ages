scoreboard players add @s GoldTelekinesisTimes 1
scoreboard players operation #Exponent PowMath = @s GoldTelekinesisTimes
scoreboard players set #InitialPrice Dummy 100
scoreboard players set #Base PowMath 1125
scoreboard players set #Scale PowMath 1000
function rpgpve:maths/pow/exe
scoreboard players operation #Final PowMath *= #InitialPrice Dummy
scoreboard players operation #Final PowMath /= #Scale PowMath
scoreboard players operation @s GoldTelekinesisCost = #Final PowMath
