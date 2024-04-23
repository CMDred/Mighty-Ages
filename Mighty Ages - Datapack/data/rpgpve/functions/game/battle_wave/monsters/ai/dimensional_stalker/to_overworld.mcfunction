#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players set #executed Dummy 1
tag @s remove Invincible
playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 0.8 0
particle end_rod ~ ~0.5 ~ 1 1 1 0.1 10 force
item replace entity @s armor.head with player_head[minecraft:profile={name:"",id:[I;-1496912474,865552882,-1883843958,2065905766],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjRlNzNhZGM2YmU3OTIyZDBkNjI4NzE5MmI0OGI0YWZjZDZkNzIyMDc3NzNkMGIxNWExOTAzYjA1MWVjMGMyMiJ9fX0="}]}]
attribute @s generic.movement_speed base set 0.2
#----------------------------------------#
