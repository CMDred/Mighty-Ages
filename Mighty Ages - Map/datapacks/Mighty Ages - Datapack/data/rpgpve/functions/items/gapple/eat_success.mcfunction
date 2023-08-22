effect clear @s absorption
effect clear @s regeneration

effect give @s regeneration 2 0
scoreboard players add @s HPRegenBonus 15
scoreboard players set @s GappleTimer 60

playsound entity.allay.item_given master @s ~ ~ ~ 3 2

tellraw @s ["",{"text":"BUFF!","color":"light_purple","bold":true},{"text":" The ","color":"white","bold":false},{"text":"Golden Apple","color":"gold","bold":false},{"text":" grants you +","color":"white","bold":false},{"text":"15% Health Regeneration","color":"gold","bold":false},{"text":" for ","color":"white","bold":false},{"text":"3","color":"gold","bold":false},{"text":" seconds! ","color":"white","bold":false}]