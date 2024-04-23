# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#          "CMDRED" on Youtube !         #
#                                        #
# ====================================== #
#----------------------------------------#
data remove storage rpgpve:actionbar_text HealthBar
data remove storage rpgpve:actionbar_text SkillPointBar
data remove storage rpgpve:actionbar_text GoldAddBar

function rpgpve:stats/actionbar/get_defense_actionbar
function rpgpve:stats/actionbar/get_health_actionbar
function rpgpve:stats/actionbar/get_mana_actionbar
execute if score @s AddedGold matches 1.. run function rpgpve:stats/actionbar/get_gold_actionbar
execute if score @s ArrowDamage matches 1.. run function rpgpve:stats/actionbar/get_arrow_actionbar

execute if score @s DifferentActionbar matches 1.. run scoreboard players remove @s DifferentActionbar 1
execute if score @s DifferentActionbar matches 1 run scoreboard players reset @s AddedGold
execute if score @s DifferentActionbar matches 1 run scoreboard players reset @s ArrowDamage
execute if score @s DifferentActionbar matches 1 run scoreboard players reset @s DamageTypeArrow
execute if score @s DifferentActionbar matches 1 run scoreboard players reset @s CastID
execute if score @s DifferentActionbar matches 1 run scoreboard players reset @s Constant

scoreboard players set #Magic Dummy 0
execute if score @s MagicMeleePurchased matches 1.. run scoreboard players set #Magic Dummy 1
execute if score @s MagicRangedPurchased matches 1.. run scoreboard players set #Magic Dummy 1

# NO MAGIC NO ARROW NO GOLD
title @s actionbar ["",{"nbt":"HealthBar","storage": "rpgpve:actionbar_text","interpret": true}]

# MAGIC NO ARROW NO GOLD
execute if score #Magic Dummy matches 1 unless score @s ArrowDamage matches 1.. unless score @s AddedGold matches 1.. run title @s actionbar ["",{"nbt":"HealthBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":"  "},{"nbt":"SkillPointBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":"  "},{"nbt":"Defense","storage": "rpgpve:actionbar_text","interpret": true}]

# MAGIC ARROW NO GOLD
execute if score #Magic Dummy matches 1 if score @s ArrowDamage matches 1.. unless score @s AddedGold matches 1.. run title @s[scores={DifferentActionbar=1..}] actionbar ["",{"nbt":"ArrowBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":" "},{"nbt":"HealthBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":"  "},{"nbt":"SkillPointBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":"  "},{"nbt":"Defense","storage": "rpgpve:actionbar_text","interpret": true}]

# MAGIC NO ARROW GOLD
execute if score #Magic Dummy matches 1 unless score @s ArrowDamage matches 1.. if score @s AddedGold matches 1.. run title @s[scores={DifferentActionbar=1..}] actionbar ["",{"nbt":"GoldAddBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":" "},{"nbt":"HealthBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":"  "},{"nbt":"SkillPointBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":"  "},{"nbt":"Defense","storage": "rpgpve:actionbar_text","interpret": true}]

# NO MAGIC ARROW GOLD
execute if score #Magic Dummy matches 0 if score @s ArrowDamage matches 1.. if score @s AddedGold matches 1.. run title @s[scores={DifferentActionbar=1..}] actionbar ["",{"nbt":"ArrowBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":" "},{"nbt":"GoldAddBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":" "},{"nbt":"HealthBar","storage": "rpgpve:actionbar_text","interpret": true}]

# NO MAGIC ARROW NO GOLD
execute if score #Magic Dummy matches 0 if score @s ArrowDamage matches 1.. unless score @s AddedGold matches 1.. run title @s[scores={DifferentActionbar=1..}] actionbar ["",{"nbt":"ArrowBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":" "},{"nbt":"HealthBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":"  "},{"nbt":"Defense","storage": "rpgpve:actionbar_text","interpret": true}]

# NO MAGIC NO ARROW GOLD
execute if score #Magic Dummy matches 0 unless score @s ArrowDamage matches 1.. if score @s AddedGold matches 1.. run title @s[scores={DifferentActionbar=1..}] actionbar ["",{"nbt":"GoldAddBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":" "},{"nbt":"HealthBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":"  "},{"nbt":"Defense","storage": "rpgpve:actionbar_text","interpret": true}]

# MAGIC ARROW GOLD
execute if score #Magic Dummy matches 1 if score @s ArrowDamage matches 1.. if score @s AddedGold matches 1.. run title @s[scores={DifferentActionbar=1..}] actionbar ["",{"nbt":"ArrowBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":" "},{"nbt":"GoldAddBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":" "},{"nbt":"HealthBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":" "},{"nbt":"SkillPointBar","storage": "rpgpve:actionbar_text","interpret": true},{"text":"  "},{"nbt":"Defense","storage": "rpgpve:actionbar_text","interpret": true}]
#----------------------------------------#