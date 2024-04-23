#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------WAVE START----------------#
tellraw @s ["",{"text":"\n "}]
execute if score #CurrentBattleWave Dummy matches 5 run tellraw @s ["",{"text":"X ","color":"dark_green","bold": true,"obfuscated": true},{"text":"New stuff is available at the","color":"green"},{"text":" End Knight","color":"light_purple"},{"text":"!","color":"green"},{"text":" X","color":"dark_green","bold": true,"obfuscated": true}]
execute if score #CurrentBattleWave Dummy matches 10 run tellraw @s ["",{"text":"X ","color":"dark_green","bold": true,"obfuscated": true},{"text":"New stuff is available at the","color":"green"},{"text":" End Knight","color":"light_purple"},{"text":"!","color":"green"},{"text":" X","color":"dark_green","bold": true,"obfuscated": true}]
execute if score #CurrentBattleWave Dummy matches 10 run tellraw @s ["",{"text":"-----------------------\n","color":"red","bold":true},{"text":"The","color":"red"},{"text":" Nether Lord","color":"dark_red"},{"text":" cursed the world! The horrific beings of Hell have invaded the dimension!","color":"red"},{"text":"\n-----------------------","color":"red","bold":true}]

execute if score #CurrentBattleWave Dummy matches 15 run tellraw @s ["",{"text":"X ","color":"dark_green","bold": true,"obfuscated": true},{"text":"New stuff is available at the","color":"green"},{"text":" End Knight","color":"light_purple"},{"text":"!","color":"green"},{"text":" X","color":"dark_green","bold": true,"obfuscated": true}]

execute if score #CurrentBattleWave Dummy matches 20 run tellraw @s ["",{"text":"-----------------------\n","color":"aqua","bold":true},{"text":"The","color":"light_purple"},{"text":" Spectral Devourer","color":"light_purple"},{"text":" added some magic! Learn spells and defeat magical beings!","color":"aqua"},{"text":"\n-----------------------","color":"light_purple","bold":true}]
execute if score #CurrentBattleWave Dummy matches 20 run tellraw @s ["",{"text":"X ","color":"dark_green","bold": true,"obfuscated": true},{"text":"New stuff is available at the","color":"green"},{"text":" End Knight","color":"light_purple"},{"text":"!","color":"green"},{"text":" X","color":"dark_green","bold": true,"obfuscated": true}]
execute if score #CurrentBattleWave Dummy matches 20 run tellraw @s ["",{"text":"X ","color":"blue","bold": true,"obfuscated": true},{"text":"New stuff is available at the","color":"aqua"},{"text":" Light Knight","color":"yellow"},{"text":"!","color":"aqua"},{"text":" X","color":"blue","bold": true,"obfuscated": true}]
execute if score #CurrentBattleWave Dummy matches 20 run tellraw @s ["",{"text":"A new NPC has arrived.","color":"gold","italic": true}]

execute if score #CurrentBattleWave Dummy matches 30 run tellraw @s ["",{"text":"-----------------------\n","color":"gold","bold":true},{"text":"The","color":"gray"},{"text":" Troll Bros","color":"gold"},{"text":" took you to the underground! Beware of the roaming creatures...","color":"gray"},{"text":"\nTIP: Use the Minecart Tracks to get you to other places!","color":"white","underlined":true},{"text":"\n-----------------------","color":"gold","bold":true}]
execute if score #CurrentBattleWave Dummy matches 30 run tellraw @s ["",{"text":"X ","color":"dark_green","bold": true,"obfuscated": true},{"text":"New stuff is available at the","color":"green"},{"text":" End Knight","color":"light_purple"},{"text":"!","color":"green"},{"text":" X","color":"dark_green","bold": true,"obfuscated": true}]

execute if score #CurrentBattleWave Dummy matches 40 run tellraw @s ["",{"text":"-----------------------\n","color":"dark_gray","bold":true},{"text":"The","color":"gray"},{"text":" Wither Lord","color":"dark_gray"},{"text":" altered time! Is it","color":"gray"},{"text":" The End? ","color":"#edd177"},{"text":"Don't die to find out!","color":"gray"},{"text":"\n-----------------------","color":"dark_gray","bold":true}]

execute if score #CurrentBattleWave Dummy matches 50 run tellraw @s ["",{"text":"-----------------------\n","color":"black","bold":true},{"text":"You defeated the Ender Dragon! The world can stay in peace.","color":"dark_purple"},{"text":"\n-----------------------","color":"black","bold":true}]

title @s times 10 50 20

execute if score #CurrentBattleWave Dummy matches 10 run title @s title {"text":"Nether Era","color":"dark_red","bold":true}
execute if score #CurrentBattleWave Dummy matches 10 run title @s subtitle {"text":"Burn, burn, burn!","color":"red","bold":false}

execute if score #CurrentBattleWave Dummy matches 20 run title @s title {"text":"Magic Era","color":"dark_aqua","bold":true}
execute if score #CurrentBattleWave Dummy matches 20 run title @s subtitle {"text":"Show your Skills!","color":"aqua","bold":false}

execute if score #CurrentBattleWave Dummy matches 30 run title @s title {"text":"Cave Era","color":"gray","bold":true}
execute if score #CurrentBattleWave Dummy matches 30 run title @s subtitle {"text":"Hop on board!","color":"gold","bold":false}

execute if score #CurrentBattleWave Dummy matches 40 run title @s title {"text":"End Era","color":"yellow","bold":true}
execute if score #CurrentBattleWave Dummy matches 40 run title @s subtitle {"text":"Brace yourselves!","color":"#edd177","bold":false}

execute if score #CurrentBattleWave Dummy matches 50 run title @s times 20 170 80
execute if score #CurrentBattleWave Dummy matches 50 run title @s title {"text":"WELL DONE!","color":"green","bold":true}
execute if score #CurrentBattleWave Dummy matches 50 run title @s subtitle [{"text":"You finished ","color":"light_purple","bold":false},{"text":"Mighty Ages","color":"dark_red"},{"text":"!"}]

execute if score #CurrentBattleWave Dummy matches 5 run playsound entity.player.levelup master @s ~ ~ ~ 1 0

execute if score #CurrentBattleWave Dummy matches 10 run playsound entity.wither.spawn master @s ~ ~ ~ 1 0.6
execute if score #CurrentBattleWave Dummy matches 10 run playsound entity.wither.ambient master @s ~ ~ ~ 1 0

execute if score #CurrentBattleWave Dummy matches 15 run playsound entity.player.levelup master @s ~ ~ ~ 1 0

execute if score #CurrentBattleWave Dummy matches 20 run playsound entity.allay.ambient_with_item master @s ~ ~ ~ 2 0
execute if score #CurrentBattleWave Dummy matches 20 run playsound entity.wither.shoot master @s ~ ~ ~ 0.3 1.3

execute if score #CurrentBattleWave Dummy matches 25 run playsound entity.player.levelup master @s ~ ~ ~ 1 0

execute if score #CurrentBattleWave Dummy matches 30 run playsound entity.zombie.hurt master @s ~ ~ ~ 1 1
execute if score #CurrentBattleWave Dummy matches 30 run playsound block.lava.ambient master @s ~ ~ ~ 2 1.5
execute if score #CurrentBattleWave Dummy matches 30 run playsound block.lava.pop master @s ~ ~ ~ 1.75 0
execute if score #CurrentBattleWave Dummy matches 30 run playsound block.anvil.use master @s ~ ~ ~ 0.1 1

execute if score #CurrentBattleWave Dummy matches 35 run playsound entity.player.levelup master @s ~ ~ ~ 1 0

execute if score #CurrentBattleWave Dummy matches 40 run playsound entity.ender_dragon.death master @s ~ ~ ~ 0.2 2
execute if score #CurrentBattleWave Dummy matches 40 run playsound entity.enderman.scream master @s ~ ~ ~ 0.4 0.2
execute if score #CurrentBattleWave Dummy matches 40 run playsound entity.shulker.death master @s ~ ~ ~ 1.5 1.2

execute if score #CurrentBattleWave Dummy matches 50 run playsound entity.player.levelup master @s ~ ~ ~ 2 1
execute if score #CurrentBattleWave Dummy matches 50 run playsound ui.toast.challenge_complete master @s ~ ~ ~ 10 0
execute if score #CurrentBattleWave Dummy matches 50 run schedule function rpgpve:game/preparation_wave/unlock_sandbox 10s
#----------------------------------------#
