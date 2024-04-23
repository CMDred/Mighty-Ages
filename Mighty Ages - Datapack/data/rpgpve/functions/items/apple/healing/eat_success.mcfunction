effect clear @s absorption
effect clear @s regeneration

scoreboard players add @s HPRegenBonus 15
scoreboard players set @s AppleTimer 60
scoreboard players set @s Attack5Timer 1
scoreboard players set @s HPRegenTimer 18

playsound entity.allay.item_given master @s ~ ~ ~ 3 2

tellraw @s ["",{"text":"BUFF!","color":"light_purple","bold":true},{"text":" The ","color":"white","bold":false},{"text":"Healing Apple","color":"#cf3a61","bold":false},{"text":" grants you +","color":"white","bold":false},{"text":"15% Health Regeneration","color":"#cf3a61","bold":false},{"text":" for ","color":"white","bold":false},{"text":"3","color":"#cf3a61","bold":false},{"text":" seconds! ","color":"white","bold":false}]