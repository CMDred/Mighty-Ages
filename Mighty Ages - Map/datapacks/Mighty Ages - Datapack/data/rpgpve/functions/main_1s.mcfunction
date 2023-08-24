schedule function rpgpve:main_1s 1s

# Health Regeneration
scoreboard players remove @a HPRegenTimer 1
execute as @a[scores={HPRegenTimer=..0}] unless score @s Health >= @s MaxHealth run function rpgpve:stats/regen/health

# Mana Regeneration
scoreboard players remove @a SPRegenTimer 1
execute as @a[scores={SPRegenTimer=..0}] unless score @s SkillPoint >= @s MaxSkillPoint run function rpgpve:stats/regen/mana

# Delete Arrows
execute as @e[type=#minecraft:arrows,nbt={inGround:1b}] run kill @s

# kill oak sign items (wtf?)
kill @e[type=item,nbt={Item:{id:"minecraft:oak_sign"}}]

# prevent troll bro void
execute as @e[type=giant,tag=TrollBroZ] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/prevent_void

# prevent custom health bars and displays to stay after its monster death
execute as @e[type=text_display,tag=CustomHealthBar] at @s unless entity @e[type=#rpgpve:has_health_bar,distance=..2,limit=1] run kill @s
execute as @e[type=item_display,tag=MobDisplay] at @s unless entity @e[type=#rpgpve:has_health_bar,distance=..2,limit=1] run kill @s
execute as @e[type=text_display,tag=MiniBossName] at @s unless entity @e[type=#rpgpve:has_health_bar,tag=MiniBoss,distance=..10,limit=1] run kill @s


# Remove host if no game is hosted
execute unless score #GameHosted Temp matches 1 run tag @a remove HostingRPGPVE
