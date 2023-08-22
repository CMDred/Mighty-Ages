#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------KILL MOB-----------------#
# Skeleton Names
execute if score @s PhysicRangedPurchased matches 1 on passengers run kill @s

# Enderwisp Visual
execute if entity @s[tag=EnderWisp] on passengers run kill @s

# Bounty
execute on attacker if entity @s[tag=Bountied] run function rpgpve:game/battle_wave/gold/bounty

# Kill Counter
execute on attacker run scoreboard players add @s TotalKills 1

# Kill
kill @s

# Sound
execute on attacker at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.3 1

# Update Remaining Mobs
function rpgpve:game/sidebar/update_remaining_enemies
#------------------------------------------#
