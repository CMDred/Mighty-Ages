#tellraw @a [{"text":"Arrow shot detected! Calculating distance..."}]
execute on origin run tag @s add DistOrigin
tag @s add DistTarget
function rpgpve:maths/distance/exe
tag @e remove DistTarget

function rpgpve:game/records/longest_bow_shot/check

execute if score #DistanceUnit Temp >= @a[tag=DistOrigin,limit=1] BowBountyDistance run tag @a[tag=DistOrigin,limit=1] add Bountied

#tellraw @a [{"text":"Sqrt Input =","color":"white"},{"score":{"name":"#DistanceUnit","objective": "Temp"}}]
scoreboard players operation in SqrtMath = #DistanceUnit Temp
function rpgpve:maths/sqrt/exe
scoreboard players operation #SqrtDistance Temp = out SqrtMath
scoreboard players operation #SqrtDistance Temp *= #c100 Constant
#tellraw @a [{"text":"Sqrt(Distance) (x100) =","color":"white"},{"score":{"name":"#SqrtDistance","objective": "Temp"}}]
scoreboard players operation #SqrtDistance Temp /= #c400 Constant
#tellraw @a [{"text":"Sqrt(Distance) (x100) / 400 = ","color":"white"},{"score":{"name":"#SqrtDistance","objective": "Temp"}}]
scoreboard players add #SqrtDistance Temp 21

#tellraw @a [{"text":"Percentage = ","color":"white"},{"score":{"name":"#SqrtDistance","objective": "Temp"}}]

scoreboard players operation #RawDamage Temp *= #SqrtDistance Temp
scoreboard players operation #RawDamage Temp /= #c100 Constant

