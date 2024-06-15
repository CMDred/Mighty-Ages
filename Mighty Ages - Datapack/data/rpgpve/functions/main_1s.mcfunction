schedule function rpgpve:main_1s 1s

# Delete Arrows
execute as @e[type=#minecraft:arrows,nbt={inGround:1b}] run kill @s

# kill oak sign items (wtf?)
kill @e[type=item,nbt={Item:{id:"minecraft:oak_sign"}}]

# prevent troll bro void
execute as @e[type=zombie,tag=TrollBroZ] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/prevent_void

# prevent custom health bars and displays to stay after its monster death
execute as @e[type=text_display,tag=CustomHealthBar] at @s unless entity @e[type=#rpgpve:has_health_bar,distance=..2,limit=1] run kill @s
execute as @e[type=item_display,tag=MobDisplay] at @s unless entity @e[type=#rpgpve:has_health_bar,distance=..2,limit=1] run kill @s
execute as @e[type=text_display,tag=MiniBossName] at @s unless entity @e[type=#rpgpve:has_health_bar,tag=MiniBoss,distance=..10,limit=1] run kill @s


# Remove host if no game is hosted
execute unless score #GameHosted Dummy matches 1 run tag @a remove HostingRPGPVE


execute as @e[type=enderman] run data modify entity @s Fire set value 0s