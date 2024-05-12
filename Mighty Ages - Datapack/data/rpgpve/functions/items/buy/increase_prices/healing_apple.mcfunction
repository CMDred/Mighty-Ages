scoreboard players add @s HealingAppleTimes 1
scoreboard players operation #Exponent PowMath = @s HealingAppleTimes
scoreboard players set #InitialPrice Dummy 30
scoreboard players set #Base PowMath 11
scoreboard players set #Scale PowMath 10
function rpgpve:maths/pow/exe
scoreboard players operation #Final PowMath *= #InitialPrice Dummy
scoreboard players operation #Final PowMath /= #Scale PowMath
scoreboard players operation @s HealingAppleCost = #Final PowMath
