scoreboard players add @s MendingPotionTimes 1
scoreboard players operation #Exponent PowMath = @s MendingPotionTimes
scoreboard players set #InitialPrice Dummy 175
scoreboard players set #Base PowMath 109
scoreboard players set #Scale PowMath 100
function rpgpve:maths/pow/exe
scoreboard players operation #Final PowMath *= #InitialPrice Dummy
scoreboard players operation #Final PowMath /= #Scale PowMath
scoreboard players operation @s MendingPotionCost = #Final PowMath
