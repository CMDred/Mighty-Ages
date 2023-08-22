### Cloud Notes ###
# Newton-Raphson, 4 iterations approach
#
# Output has 2 decimal precision
#
# in = number to root

execute if score in SqrtMath matches 214748.. run tellraw @a [{"text":"MATH Error:","color":"red"},{"text":" Fast Sqrt() Overflow. Input too large!","color":"white"}]
execute if score in SqrtMath matches ..-1 run tellraw @a [{"text":"MATH Error:","color":"red"},{"text":" Fast Sqrt() Imaginary Number (input negative)","color":"white"}]

scoreboard players operation #temp1 SqrtMath = in SqrtMath
scoreboard players operation in SqrtMath *= #c10000 Constant

### a
scoreboard players set out SqrtMath 1255

function rpgpve:maths/sqrt/newton_raphson
function rpgpve:maths/sqrt/newton_raphson
function rpgpve:maths/sqrt/newton_raphson
function rpgpve:maths/sqrt/newton_raphson
execute if score #temp1 SqrtMath matches 10000.. run function rpgpve:maths/sqrt/newton_raphson
execute if score #temp1 SqrtMath matches 100000.. run function rpgpve:maths/sqrt/newton_raphson

execute if score out SqrtMath matches ..0 run scoreboard players operation out SqrtMath *= #c-1 Constant
scoreboard players operation in SqrtMath = #temp1 SqrtMath