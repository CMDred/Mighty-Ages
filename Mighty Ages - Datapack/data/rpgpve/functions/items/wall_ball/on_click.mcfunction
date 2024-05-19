execute at @s as @e[type=snowball,tag=!Checked] on origin if score @s PlayerID = @p PlayerID run function rpgpve:items/wall_ball/on_ball_setup
tag @e[type=snowball,tag=!Checked] add Checked