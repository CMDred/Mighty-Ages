scoreboard players add @s HealingPotionTimes 1
scoreboard players operation #Exponent PowMath = @s HealingPotionTimes
scoreboard players set #InitialPrice Dummy 50
scoreboard players set #Base PowMath 108
scoreboard players set #Scale PowMath 100
function rpgpve:maths/pow/exe
scoreboard players operation #Final PowMath *= #InitialPrice Dummy
scoreboard players operation #Final PowMath /= #Scale PowMath
scoreboard players operation @s HealingPotionCost = #Final PowMath
