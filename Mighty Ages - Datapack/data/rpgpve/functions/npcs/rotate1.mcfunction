execute as @e[type=armor_stand,tag=PlayerNPC,distance=..26] at @s run function rpgpve:npcs/rotate2
execute as @e[type=#rpgpve:npc_entities,tag=NPC,distance=..8,tag=!NoRotate] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
