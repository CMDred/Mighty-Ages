# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#  "CMDRED" on Youtube ! #
#                                        #
# ====================================== #
#----------------------------------------#
scoreboard players operation #MaxHPScaled Temp = @s MaxHealth
scoreboard players operation #MaxHPScaled Temp *= #c10 Constant
#tellraw @s {"score":{"name":"@s","objective": "Health"}}
execute unless score @s HealthScaled matches 1.. run function rpgpve:stats/regen/get_health_scaled

#tellraw @s ["",{"text":"Max Health * 10 = "},{"score":{"name": "#MaxHPScaled","objective": "Temp"}}]
#tellraw @s ["",{"text":"Current Health * 10 = "},{"score":{"name": "@s","objective": "HealthScaled"}}]

scoreboard players operation #Divisor Temp = @s HPRegenRatio
scoreboard players operation #Divisor Temp /= @s HPRegenBonus

#tellraw @s ["",{"text":"Divisor = "},{"score":{"name": "#Divisor","objective": "Temp"}}]

#tellraw @s ["",{"text":"Regen Scaled = "},{"score":{"name": "#MaxHPScaled","objective": "Temp"}},{"text":" / "},{"score":{"name": "#Divisor","objective": "Temp"}}]

execute store result score #RegenScaled Temp run scoreboard players operation #MaxHPScaled Temp /= #Divisor Temp

#tellraw @s ["",{"text":"Regen Scaled = "},{"score":{"name": "#RegenScaled","objective": "Temp"}}]

#tellraw @s ["",{"text":"New Health Scaled = "},{"score":{"name": "@s","objective": "HealthScaled"}},{"text":" + "},{"score":{"name": "#RegenScaled","objective": "Temp"}}]

scoreboard players operation @s HealthScaled += #RegenScaled Temp
#tellraw @s ["",{"text":"New Health Scaled = "},{"score":{"name": "@s","objective": "HealthScaled"}}]

scoreboard players operation @s HealthRegen = #RegenScaled Temp

scoreboard players operation #LastHP Temp = @s Health
scoreboard players operation @s Health = @s HealthScaled
scoreboard players operation @s Health /= #c10 Constant
scoreboard players operation #HPDiff Temp = @s Health
scoreboard players operation #HPDiff Temp -= #LastHP Temp
#tellraw @s ["",{"text":"HP Difference = "},{"score":{"name": "#HPDiff","objective": "Temp"}}]

# Health
execute if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
execute unless score @s Health matches -2147483648.. run scoreboard players operation @s Health = @s MaxHealth

scoreboard players set @s HPRegenTimer 1
#----------------------------------------#