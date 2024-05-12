scoreboard players add @s SpeedTimes 1
scoreboard players operation #Exponent PowMath = @s SpeedTimes
scoreboard players set #InitialPrice Dummy 200
scoreboard players set #Base PowMath 109
scoreboard players set #Scale PowMath 100
function rpgpve:maths/pow/exe
scoreboard players operation #Final PowMath *= #InitialPrice Dummy
scoreboard players operation #Final PowMath /= #Scale PowMath
scoreboard players operation @s SpeedCost = #Final PowMath
