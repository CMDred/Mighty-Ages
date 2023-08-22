execute if entity @p[tag=IsInRPGPVEGame,team=red,tag=Eliminated] run team modify mate_health_red suffix [{"text":" DEAD","color":"red","bold":true}]
execute unless entity @p[tag=IsInRPGPVEGame,team=red] run team modify mate_health_red suffix [{"text":" Health: "},{"text":"Playing Solo!","color":"#50cc9a","underlined":true}]
execute if entity @p[tag=IsInRPGPVEGame,team=red,tag=!Eliminated] run function rpgpve:game/sidebar/health/red/calc


execute if entity @p[tag=IsInRPGPVEGame,team=blue,tag=Eliminated] run team modify mate_health_blue suffix [{"text":" DEAD","color":"red","bold":true}]
execute unless entity @p[tag=IsInRPGPVEGame,team=blue] run team modify mate_health_blue suffix [{"text":" Health: "},{"text":"Playing Solo!","color":"#50cc9a","underlined":true}]
execute if entity @p[tag=IsInRPGPVEGame,team=blue,tag=!Eliminated] run function rpgpve:game/sidebar/health/blue/calc