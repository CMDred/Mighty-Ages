#Check if new entity
scoreboard players set #RaycastReach Dummy 0
execute unless score @s Menus.Page = @a[tag=ThisPlayer,limit=1] Menus.LookingAtID run return run function rpgpve:menus/npc/start_summon

#Only runs if Minecart is already spawned
scoreboard players operation #Search PlayerID = @a[tag=ThisPlayer,limit=1] PlayerID
execute as @a[tag=ThisPlayer,limit=1] at @s anchored eyes positioned ^ ^ ^0.7 as @e[type=minecraft:block_display,predicate=rpgpve:same_player_id,limit=1] run tp @s ~ ~-0.32 ~