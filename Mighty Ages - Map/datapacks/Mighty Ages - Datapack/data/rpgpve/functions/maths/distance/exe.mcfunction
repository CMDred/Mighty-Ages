execute store result score #XTarget Temp run data get entity @e[tag=DistTarget,limit=1] Pos[0]
execute store result score #YTarget Temp run data get entity @e[tag=DistTarget,limit=1] Pos[1]
execute store result score #ZTarget Temp run data get entity @e[tag=DistTarget,limit=1] Pos[2]

execute store result score #XOrigin Temp run data get entity @e[tag=DistOrigin,limit=1] Pos[0]
execute store result score #YOrigin Temp run data get entity @e[tag=DistOrigin,limit=1] Pos[1]
execute store result score #ZOrigin Temp run data get entity @e[tag=DistOrigin,limit=1] Pos[2]

execute store result score #DeltaX Temp run scoreboard players operation #XTarget Temp -= #XOrigin Temp
execute store result score #DeltaY Temp run scoreboard players operation #YTarget Temp -= #YOrigin Temp
execute store result score #DeltaZ Temp run scoreboard players operation #ZTarget Temp -= #ZOrigin Temp

execute store result score #DeltaXSqr Temp run scoreboard players operation #DeltaX Temp *= #DeltaX Temp
execute store result score #DeltaYSqr Temp run scoreboard players operation #DeltaY Temp *= #DeltaY Temp
execute store result score #DeltaZSqr Temp run scoreboard players operation #DeltaZ Temp *= #DeltaZ Temp

execute store result score in SqrtMath run scoreboard players operation #DeltaXSqr Temp += #DeltaYSqr Temp
scoreboard players operation in SqrtMath += #DeltaZSqr Temp

function rpgpve:maths/sqrt/exe
scoreboard players operation #Distance Temp = out SqrtMath 
scoreboard players operation #DistanceUnit Temp = #Distance Temp
scoreboard players operation #DistanceDeci Temp = #Distance Temp

scoreboard players operation #DistanceUnit Temp /= #c100 Constant
scoreboard players operation #DistanceDeci Temp %= #c100 Constant

# debug
#execute if score #DistanceDeci Temp matches ..9 run tellraw @a [{"text":"Distance between "},{"selector":"@a[tag=DistOrigin]"},{"text":" and "},{"nbt":"ArmorItems[3].tag.MobName","interpret": true,"entity":"@e[type=#rpgpve:has_healthbar,tag=DistTarget,limit=1]"},{"text":" is "},{"score":{"name": "#DistanceUnit","objective": "Temp"}},{"text":",0"},{"score":{"name": "#DistanceDeci","objective": "Temp"}}]
#execute if score #DistanceDeci Temp matches 10.. run tellraw @a [{"text":"Distance between "},{"selector":"@a[tag=DistOrigin]"},{"text":" and "},{"nbt":"ArmorItems[3].tag.MobName","interpret": true,"entity":"@e[type=#rpgpve:has_healthbar,tag=DistTarget,limit=1]"},{"text":" is "},{"score":{"name": "#DistanceUnit","objective": "Temp"}},{"text":","},{"score":{"name": "#DistanceDeci","objective": "Temp"}}]
