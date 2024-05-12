scoreboard players remove #Iterations Dummy 1
scoreboard players operation #Final PowMath *= #Base PowMath
scoreboard players operation #Final PowMath /= #Scale PowMath
execute if score #Iterations Dummy matches 1.. run function rpgpve:maths/pow/loop