#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #BossAnim Dummy 1

execute if score @s Dummy matches ..85 run tp @s ~ ~0.08 ~ 90 -25

scoreboard players add @s Dummy 1
execute if score @s Dummy matches 2 run playsound block.portal.trigger hostile @a ~ ~ ~ 3.5 0.75 0

execute if score @s Dummy matches 100 run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/spawn_skull

execute if score @s Dummy matches 160.. as @e[type=item_display,tag=WitherBossSkull] at @s run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/throw_skull

particle electric_spark ~ ~2 ~ 1 1 1 0.01 20 normal
particle flash ~ ~ ~ 0.025 0.025 0.025 0.01 1 normal
#----------------------------------------#
