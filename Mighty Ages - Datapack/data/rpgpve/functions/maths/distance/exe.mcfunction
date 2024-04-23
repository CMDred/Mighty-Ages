execute store result score #XTarget Dummy run data get entity @e[tag=DistTarget,limit=1] Pos[0]
execute store result score #YTarget Dummy run data get entity @e[tag=DistTarget,limit=1] Pos[1]
execute store result score #ZTarget Dummy run data get entity @e[tag=DistTarget,limit=1] Pos[2]

execute store result score #XOrigin Dummy run data get entity @e[tag=DistOrigin,limit=1] Pos[0]
execute store result score #YOrigin Dummy run data get entity @e[tag=DistOrigin,limit=1] Pos[1]
execute store result score #ZOrigin Dummy run data get entity @e[tag=DistOrigin,limit=1] Pos[2]

execute store result score #DeltaX Dummy run scoreboard players operation #XTarget Dummy -= #XOrigin Dummy
execute store result score #DeltaY Dummy run scoreboard players operation #YTarget Dummy -= #YOrigin Dummy
execute store result score #DeltaZ Dummy run scoreboard players operation #ZTarget Dummy -= #ZOrigin Dummy

execute store result score #DeltaXSqr Dummy run scoreboard players operation #DeltaX Dummy *= #DeltaX Dummy
execute store result score #DeltaYSqr Dummy run scoreboard players operation #DeltaY Dummy *= #DeltaY Dummy
execute store result score #DeltaZSqr Dummy run scoreboard players operation #DeltaZ Dummy *= #DeltaZ Dummy

execute store result score in SqrtMath run scoreboard players operation #DeltaXSqr Dummy += #DeltaYSqr Dummy
scoreboard players operation in SqrtMath += #DeltaZSqr Dummy

function rpgpve:maths/sqrt/exe
scoreboard players operation #Distance Dummy = out SqrtMath 
scoreboard players operation #DistanceUnit Dummy = #Distance Dummy
scoreboard players operation #DistanceDeci Dummy = #Distance Dummy

scoreboard players operation #DistanceUnit Dummy /= #c100 Constant
scoreboard players operation #DistanceDeci Dummy %= #c100 Constant

# debug
#execute if score #DistanceDeci Dummy matches ..9 run tellraw @a [{"text":"Distance between "},{"selector":"@a[tag=DistOrigin]"},{"text":" and "},{"nbt":"ArmorItems[3].components."minecraft:custom_data".MobName","interpret": true,"entity":"@e[type=#rpgpve:has_healthbar,tag=DistTarget,limit=1]"},{"text":" is "},{"score":{"name": "#DistanceUnit","objective": "Dummy"}},{"text":",0"},{"score":{"name": "#DistanceDeci","objective": "Dummy"}}]
#execute if score #DistanceDeci Dummy matches 10.. run tellraw @a [{"text":"Distance between "},{"selector":"@a[tag=DistOrigin]"},{"text":" and "},{"nbt":"ArmorItems[3].components."minecraft:custom_data".MobName","interpret": true,"entity":"@e[type=#rpgpve:has_healthbar,tag=DistTarget,limit=1]"},{"text":" is "},{"score":{"name": "#DistanceUnit","objective": "Dummy"}},{"text":","},{"score":{"name": "#DistanceDeci","objective": "Dummy"}}]
