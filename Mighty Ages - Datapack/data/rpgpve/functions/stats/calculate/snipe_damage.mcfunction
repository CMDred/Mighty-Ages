#tellraw @a [{"text":"Arrow shot detected! Calculating distance..."}]
execute on origin run tag @s add DistOrigin
tag @s add DistTarget
function rpgpve:maths/distance/exe
tag @e remove DistTarget

function rpgpve:game/records/longest_bow_shot/check

execute if score #DistanceUnit Dummy >= @a[tag=DistOrigin,limit=1] BowBountyDistance run tag @a[tag=DistOrigin,limit=1] add Bountied

#tellraw @a [{"text":"Sqrt Input =","color":"white"},{"score":{"name":"#DistanceUnit","objective": "Dummy"}}]
scoreboard players operation in SqrtMath = #DistanceUnit Dummy
function rpgpve:maths/sqrt/exe
scoreboard players operation #SqrtDistance Dummy = out SqrtMath
scoreboard players operation #SqrtDistance Dummy *= #c100 Constant
#tellraw @a [{"text":"Sqrt(Distance) (x100) =","color":"white"},{"score":{"name":"#SqrtDistance","objective": "Dummy"}}]
scoreboard players operation #SqrtDistance Dummy /= #c400 Constant
#tellraw @a [{"text":"Sqrt(Distance) (x100) / 400 = ","color":"white"},{"score":{"name":"#SqrtDistance","objective": "Dummy"}}]
scoreboard players add #SqrtDistance Dummy 21

#tellraw @a [{"text":"Percentage = ","color":"white"},{"score":{"name":"#SqrtDistance","objective": "Dummy"}}]

scoreboard players operation #RawDamage Dummy *= #SqrtDistance Dummy
scoreboard players operation #RawDamage Dummy /= #c100 Constant

