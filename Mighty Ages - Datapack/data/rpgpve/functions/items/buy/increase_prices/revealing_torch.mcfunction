scoreboard players add @s RevealingTorchTimes 1
scoreboard players operation #Exponent PowMath = @s RevealingTorchTimes
scoreboard players set #InitialPrice Dummy 25
scoreboard players set #Base PowMath 113
scoreboard players set #Scale PowMath 100
function rpgpve:maths/pow/exe
scoreboard players operation #Final PowMath *= #InitialPrice Dummy
scoreboard players operation #Final PowMath /= #Scale PowMath
scoreboard players operation @s RevealingTorchCost = #Final PowMath
