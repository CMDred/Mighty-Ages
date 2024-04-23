#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result score #RandomBlock Dummy run random value 1..5

execute if score #RandomBlock Dummy matches 1 run summon armor_stand ~ ~ ~ {Tags:["TrollBroBlockPhysics","TrollBroBlock"],Invisible:1b,Invulnerable:1b,Attributes:[{Name:"minecraft:generic.gravity",Base:0.04}],Passengers:[{id:"minecraft:block_display",Tags:["TrollBroBlockDisplay","TrollBroBlock"],block_state:{Name:"minecraft:stone"},width:1,height:1,transformation:{translation:[-0.5f,-2f,-0.5f]}}]}
execute if score #RandomBlock Dummy matches 2 run summon armor_stand ~ ~ ~ {Tags:["TrollBroBlockPhysics","TrollBroBlock"],Invisible:1b,Invulnerable:1b,Attributes:[{Name:"minecraft:generic.gravity",Base:0.04}],Passengers:[{id:"minecraft:block_display",Tags:["TrollBroBlockDisplay","TrollBroBlock"],block_state:{Name:"minecraft:dirt"},width:1,height:1,transformation:{translation:[-0.5f,-2f,-0.5f]}}]}
execute if score #RandomBlock Dummy matches 3 run summon armor_stand ~ ~ ~ {Tags:["TrollBroBlockPhysics","TrollBroBlock"],Invisible:1b,Invulnerable:1b,Attributes:[{Name:"minecraft:generic.gravity",Base:0.04}],Passengers:[{id:"minecraft:block_display",Tags:["TrollBroBlockDisplay","TrollBroBlock"],block_state:{Name:"minecraft:deepslate"},width:1,height:1,transformation:{translation:[-0.5f,-2f,-0.5f]}}]}
execute if score #RandomBlock Dummy matches 4 run summon armor_stand ~ ~ ~ {Tags:["TrollBroBlockPhysics","TrollBroBlock"],Invisible:1b,Invulnerable:1b,Attributes:[{Name:"minecraft:generic.gravity",Base:0.04}],Passengers:[{id:"minecraft:block_display",Tags:["TrollBroBlockDisplay","TrollBroBlock"],block_state:{Name:"minecraft:andesite"},width:1,height:1,transformation:{translation:[-0.5f,-2f,-0.5f]}}]}
execute if score #RandomBlock Dummy matches 5 run summon armor_stand ~ ~ ~ {Tags:["TrollBroBlockPhysics","TrollBroBlock"],Invisible:1b,Invulnerable:1b,Attributes:[{Name:"minecraft:generic.gravity",Base:0.04}],Passengers:[{id:"minecraft:block_display",Tags:["TrollBroBlockDisplay","TrollBroBlock"],block_state:{Name:"minecraft:cobblestone"},width:1,height:1,transformation:{translation:[-0.5f,-2f,-0.5f]}}]}


data merge entity @e[type=block_display,tag=TrollBroBlockDisplay,tag=!Setup,limit=1] {transformation:{translation:[-0.5f,-2f,-0.5f]}}
tag @e[type=block_display,tag=TrollBroBlockDisplay,tag=!Setup,limit=1] add Setup
#----------------------------------------#
