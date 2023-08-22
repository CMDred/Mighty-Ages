#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
clone ~-3 ~ ~-3 ~3 ~8 ~3 ~-3 40 ~-3

summon text_display ~ ~7 ~ {Tags:["RegenCrystalHitInfo"],text:'[{"text":"100","color":"light_purple","bold":true},{"text":" Hits!","color":"dark_purple","bold":true}]',billboard:'center',transformation:[6f,0f,0f,0f,0f,6f,0f,0f,0f,0f,6f,0f,0f,0f,0f,1f]}

playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 1.666667 0
summon lightning_bolt

setblock ~ ~ ~ minecraft:structure_block[mode=load]{ignoreEntities:0b,mode:"LOAD",name:"rpgpve:crystal",posX:-3,posY:0,posZ:-3,showboundingbox:0b,sizeX:7,sizeY:8,sizeZ:7}
setblock ~ ~-1 ~ redstone_block

setblock ~ ~ ~ lime_wool
setblock ~ ~-1 ~ stone

scoreboard players set @e[type=interaction,tag=RegenCrystalInteraction] ArrowDamage 100
kill @s[type=marker]
#----------------------------------------#
