#Check page
scoreboard players operation #Search PlayerID = @s PlayerID
tag @a[predicate=rpgpve:same_player_id,limit=1] add MenuOwner
execute store result storage rpgpve:temporary MenuPage int 1 run scoreboard players get @s Menus.Page
execute as @p[tag=MenuOwner] run function rpgpve:game/battle_wave/gold/get_gold
function rpgpve:menus/refresh_page_2 with storage rpgpve:temporary
tag @a[tag=MenuOwner,limit=1] remove MenuOwner