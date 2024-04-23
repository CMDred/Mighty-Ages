# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#          "CMDRED" on Youtube !         #
#                                        #
# ====================================== #
#----------------------------------------#
scoreboard players operation #MaxHPScaled Dummy = @s MaxHealth
scoreboard players operation #MaxHPScaled Dummy *= #c10 Constant
#tellraw @s {"score":{"name":"@s","objective": "Health"}}
execute unless score @s HealthScaled matches 1.. run function rpgpve:stats/regen/get_health_scaled

#tellraw @s ["",{"text":"Max Health * 10 = "},{"score":{"name": "#MaxHPScaled","objective": "Dummy"}}]
#tellraw @s ["",{"text":"Current Health * 10 = "},{"score":{"name": "@s","objective": "HealthScaled"}}]

scoreboard players operation #Divisor Dummy = @s HPRegenRatio
scoreboard players operation #Divisor Dummy /= @s HPRegenBonus

#tellraw @s ["",{"text":"Divisor = "},{"score":{"name": "#Divisor","objective": "Dummy"}}]

#tellraw @s ["",{"text":"Regen Scaled = "},{"score":{"name": "#MaxHPScaled","objective": "Dummy"}},{"text":" / "},{"score":{"name": "#Divisor","objective": "Dummy"}}]

execute store result score #RegenScaled Dummy run scoreboard players operation #MaxHPScaled Dummy /= #Divisor Dummy

#tellraw @s ["",{"text":"Regen Scaled = "},{"score":{"name": "#RegenScaled","objective": "Dummy"}}]

#tellraw @s ["",{"text":"New Health Scaled = "},{"score":{"name": "@s","objective": "HealthScaled"}},{"text":" + "},{"score":{"name": "#RegenScaled","objective": "Dummy"}}]

scoreboard players operation @s HealthScaled += #RegenScaled Dummy
#tellraw @s ["",{"text":"New Health Scaled = "},{"score":{"name": "@s","objective": "HealthScaled"}}]

scoreboard players operation @s HealthRegen = #RegenScaled Dummy

scoreboard players operation #LastHP Dummy = @s Health
scoreboard players operation @s Health = @s HealthScaled
scoreboard players operation @s Health /= #c10 Constant
scoreboard players operation #HPDiff Dummy = @s Health
scoreboard players operation #HPDiff Dummy -= #LastHP Dummy
#tellraw @s ["",{"text":"HP Difference = "},{"score":{"name": "#HPDiff","objective": "Dummy"}}]

# Health
execute if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
execute unless score @s Health matches -2147483648.. run scoreboard players operation @s Health = @s MaxHealth

execute as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/sidebar/update_health

scoreboard players set @s HPRegenTimer 25
#----------------------------------------#