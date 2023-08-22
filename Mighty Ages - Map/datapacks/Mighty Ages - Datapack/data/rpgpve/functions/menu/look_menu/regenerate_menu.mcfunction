#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#---------------COMPASS MENU---------------#
scoreboard players operation @p M_LookMenuPage = @s M_LookMenuPage
function rpgpve:menu/kill
kill @e[type=item,nbt={Item:{tag:{MenuItem:1b}}},distance=..5]
execute at @p run summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Tags:["MenuMove","NewMenu"],Small:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Silent:1b,Tags:["EntityMenuChest","MenuChest","NewMenu","invisible_minecart","LookMenu"],CustomDisplayTile:1b,CustomName:'{"text":"Look Menu"}',DisplayState:{Name:"minecraft:air"}}]}
execute at @p positioned ~ ~0.5 ~ run scoreboard players operation @e[type=#rpgpve:menu_entities,tag=NewMenu,limit=2,sort=nearest] PlayerID = @p PlayerID
execute at @p positioned ~ ~0.5 ~ run scoreboard players operation @e[type=#rpgpve:menu_entities,tag=NewMenu,limit=2,sort=nearest] M_CurrentPage = @p M_LookMenuPage
execute at @p positioned ~ ~0.5 ~ run scoreboard players operation @e[type=#rpgpve:menu_entities,tag=NewMenu,limit=2,sort=nearest] M_LookMenuPage = @p M_LookMenuPage
execute at @p positioned ~ ~0.5 ~ run scoreboard players set @e[type=chest_minecart,tag=NewMenu,limit=1,sort=nearest] M_PageDelay 1
tag @e[type=#rpgpve:menu_entities,tag=NewMenu,limit=2] remove NewMenu
tag @p add Menu
scoreboard players set @p M_ClickElement 1
#------------------------------------------#