tag @e[type=potion,nbt={Item:{tag:{CustomPotionColor:16721157}}}] add CustomPotion
tag @e[type=potion,nbt={Item:{tag:{CustomPotionColor:1187832}}}] add CustomPotion

execute if entity @e[type=potion,tag=CustomPotion,limit=1] run scoreboard players set #Potion Temp 1

scoreboard players reset @s ThrowPotion