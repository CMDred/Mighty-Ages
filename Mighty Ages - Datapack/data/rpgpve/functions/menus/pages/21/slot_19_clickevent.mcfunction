function rpgpve:menus/play_click_sound
scoreboard players add @p[tag=MenuOwner] HasAutoTelekinesis 1
execute as @p[tag=MenuOwner] if score @s HasAutoTelekinesis matches 2.. run scoreboard players set @s HasAutoTelekinesis 0
execute as @p[tag=MenuOwner] if score @s HasAutoTelekinesis matches 0 run tellraw @s {"text":"Auto-Telekinesis is now disabled!","color":"green"}
execute as @p[tag=MenuOwner] if score @s HasAutoTelekinesis matches 1 run tellraw @s {"text":"Auto-Telekinesis is now enabled!","color":"green"}
