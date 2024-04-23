#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------DIFFICULTY---------------#
tellraw @a[tag=IsInRPGPVEGame,tag=Eliminated] ["",{"text":"MEDIUM","color":"gold","bold":true},{"text":" Difficulty","color":"yellow"},{"text":">> Your teammate has the possibility to revive in exchange for all your coins. "}]
tellraw @a[tag=IsInRPGPVEGame,tag=!Eliminated] ["",{"text":"MEDIUM","color":"gold","bold":true},{"text":" Difficulty","color":"yellow"},{"text":">> You can remove your teammate in exchange for all your coins."},{"text":" [REVIVE]","color":"green","clickEvent": {"action": "run_command","value": "/function rpgpve:game/difficulty/medium_revive_clicked"}}]
tellraw @a[tag=IsInRPGPVEGame,tag=Eliminated] ["",{"text":"NOTE : Gold items on the ground will also be removed if you choose to revive! Don't try to pick them up after reviving >:)","color":"gray"}]
#----------------------------------------#
