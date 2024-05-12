scoreboard players operation #Iterations Dummy = #Exponent PowMath
scoreboard players operation #Final PowMath = #Base PowMath
scoreboard players remove #Iterations Dummy 1
execute if score #Iterations Dummy matches 1.. run function rpgpve:maths/pow/loop