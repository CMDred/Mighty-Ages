tag @s add ThisPlayer
scoreboard players set #RaycastReach Dummy 16
scoreboard players operation #Search PlayerID = @s PlayerID
execute anchored eyes positioned ^ ^ ^ run function rpgpve:menus/npc/raycast/raycast
tag @s remove ThisPlayer