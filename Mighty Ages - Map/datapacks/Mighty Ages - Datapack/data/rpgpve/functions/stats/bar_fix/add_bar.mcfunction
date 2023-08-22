#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#--------------SKELETON FIX----------------#
summon text_display ~ ~ ~ {Tags:["CustomHealthBar","NewCustomHealthBar"],billboard:"vertical",transformation:[1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f,0f,0f,1f,0f,1f]}
ride @e[type=text_display,tag=NewCustomHealthBar,distance=..1,sort=nearest,limit=1] mount @e[type=#rpgpve:has_health_bar,tag=EditingMob,sort=nearest,limit=1]
tag @e[type=text_display,tag=NewCustomHealthBar,distance=..1,sort=nearest,limit=1] remove NewCustomHealthBar
#------------------------------------------#