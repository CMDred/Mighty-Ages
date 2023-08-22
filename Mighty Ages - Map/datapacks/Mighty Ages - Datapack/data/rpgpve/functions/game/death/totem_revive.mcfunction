function rpgpve:stats/restore_health
particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.1 30 normal
tellraw @s ["",{"text":"Your","color":"green"},{"text":" Totem of Undying ","color":"dark_purple"},{"text":"revived you!","color":"green"}]
playsound item.totem.use master @s ~ ~ ~ 1 1
scoreboard players set @s TotemOfUndying 0