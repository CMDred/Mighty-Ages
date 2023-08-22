tellraw @a {"text":" --- LOG DECIMAL ITERATION ---"}

execute if score #var LogMath matches 1.. run scoreboard players operation #var LogMath /= base LogMath
tellraw @a ["",{"text":"New Var = "},{"text":" Var / "},{"score":{"name":"base","objective": "LogMath"}},{"text":" = "},{"score":{"name":"#var","objective": "LogMath"}}]
execute if score #var LogMath matches 1.. run scoreboard players add out LogMath 10
tellraw @a ["",{"text":"Output = "},{"score":{"name":"out","objective": "LogMath"}}]

scoreboard players remove #LoopAmount LogMath 1
execute if score #var LogMath matches 1.. if score #LoopAmount LogMath matches 1.. run function rpgpve:maths/log/loop_deci