tag @e[type=potion,nbt={Item:{components:{"minecraft:potion_contents":{custom_color:13580897}}}}] add CustomPotion
tag @e[type=potion,nbt={Item:{components:{"minecraft:potion_contents":{custom_color:4107489}}}}] add CustomPotion

execute if entity @e[type=potion,tag=CustomPotion,limit=1] run scoreboard players set #Potion Dummy 1

scoreboard players reset @s ThrowPotion