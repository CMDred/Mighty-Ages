#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
playsound entity.wither.spawn master @a ~ ~ ~ 2 1.5 0
particle flash ~ ~ ~
execute anchored eyes positioned ^ ^ ^ positioned ~ ~4 ~ run summon item_display ~ ~ ~ {Glowing:1b,glow_color_override:16777215,Tags:["WitherBossSkull"],Rotation:[90f,-25f],item:{id:"minecraft:wither_skeleton_skull",Count:1b},item_display:'head',transformation:[-0.999f,0f,-0.049f,0f,0f,1f,0f,0f,0.049f,0f,-0.999f,0f,0f,0f,0f,1f]}
function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/skull_main_sched
#----------------------------------------#