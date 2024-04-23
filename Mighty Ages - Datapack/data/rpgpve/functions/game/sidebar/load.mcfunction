# Teams
team add wave
team add enemies_remaining
team add mate_health_red
team add mate_health_blue
team add gold_red
team add gold_blue
team add shared_gold
team add elapsed_time
team add credits

team modify wave suffix [{"text":" XXXX Wave #X","color":"dark_aqua"}]
team modify enemies_remaining suffix {"text":" Y","color":"light_purple"}
team modify enemies_remaining prefix {"text":"Enemies "}
team modify gold_red suffix {"text":" Z","color":"gold"}
team modify gold_blue suffix {"text":" Z","color":"gold"}
team modify shared_gold suffix {"text":" Z","color":"gold"}

team modify mate_health_red suffix [{"text":" Health: "},{"text":"H%","color":"green"}]
team modify mate_health_blue suffix [{"text":" Health: "},{"text":"H%","color":"green"}]
team modify elapsed_time prefix [{"text":"Elapsed Time: ","color":"white"},{"text":"A","color": "green"}]
team modify elapsed_time color green
team modify elapsed_time suffix ["",{"text":" B","color":"green"},{"text":"s","color":"green"}]
team modify credits suffix ["",{"text":"Made by CMDred","color":"yellow"}]

team join credits §a
team join elapsed_time m
team join enemies_remaining Remaining:
team join wave Wave:
team join mate_health_red §^Teammate
team join mate_health_blue §*Teammate

team join gold_red §^Gold:
team join gold_blue §*Gold:
team join shared_gold §!Gold:

# score
scoreboard players set m bar_red 7
scoreboard players set m bar_blue 7

scoreboard players set Wave: bar_red 6
scoreboard players set Wave: bar_blue 6

scoreboard players set Remaining: bar_red 5
scoreboard players set Remaining: bar_blue 5

scoreboard players set §c bar_red 4
scoreboard players set §c bar_blue 4

scoreboard players set §*Teammate bar_red 3
scoreboard players set §^Teammate bar_blue 3

scoreboard players set §^Gold: bar_red 2
scoreboard players set §*Gold: bar_blue 2
scoreboard players set §!Gold: bar_blue 2
scoreboard players set §!Gold: bar_red 2

scoreboard players set §b bar_red 1
scoreboard players set §b bar_blue 1

scoreboard players set §a bar_red 0
scoreboard players set §a bar_blue 0