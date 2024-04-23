effect clear @s absorption
effect clear @s regeneration

scoreboard players add @s SPRegenBonus 15
scoreboard players set @s AppleTimer 60
scoreboard players set @s Attack5Timer 2
scoreboard players set @s SPRegenTimer 18

playsound entity.allay.item_given master @s ~ ~ ~ 3 2

tellraw @s ["",{"text":"BUFF!","color":"light_purple","bold":true},{"text":" The ","color":"white","bold":false},{"text":"Mending Apple","color":"#3eace1","bold":false},{"text":" grants you +","color":"white","bold":false},{"text":"15% Skill Point Regeneration","color":"#3eace1","bold":false},{"text":" for ","color":"white","bold":false},{"text":"3","color":"#3eace1","bold":false},{"text":" seconds! ","color":"white","bold":false}]