scoreboard players set out LogMath 0

# Only do for bases > 1; leave all else as output = 0
execute if score base LogMath matches 2.. run scoreboard players operation #var LogMath = in LogMath
tellraw @a ["",{"text":"Var Start = "},{"score":{"name":"#var","objective": "LogMath"}}]

# Divide number by base up to 30 times, because that is the maximum possible value: log_2(2^30) = 30
# (31-bit positive integers in Minecraft, so 2^31 - 1 is the max value)

scoreboard players set #LoopAmount LogMath 30
function rpgpve:maths/log/loop

scoreboard players operation #FirstDeci Dummy = #DistanceDeci Dummy
execute if score #DistanceDeci Dummy matches 10.. run scoreboard players operation #DistanceDeci Dummy /= #c10 Constant
scoreboard players operation #var LogMath = #DistanceDeci Dummy
scoreboard players set #c100000000 Constant 100000000
scoreboard players operation #var LogMath *= #c100000000 Constant
tellraw @a ["",{"text":"Deci Var Start = "},{"score":{"name":"#var","objective": "LogMath"}}]
scoreboard players set #LoopAmount LogMath 9
function rpgpve:maths/log/loop_deci