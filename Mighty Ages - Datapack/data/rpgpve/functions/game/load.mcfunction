#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME LOAD----------------#
scoreboard objectives add ParticleSpeed dummy
# Gold
scoreboard objectives add GoldGot dummy
scoreboard objectives add TotalGold dummy
scoreboard objectives add AddedGold dummy
# Sidebar
team add blue 
team add red
team modify blue color blue
team modify red color red
scoreboard objectives add bar_blue dummy
scoreboard objectives add bar_red dummy

scoreboard objectives modify bar_red displayname {"text":"Mighty Ages","color":"yellow","bold":true}
scoreboard objectives modify bar_blue displayname {"text":"Mighty Ages","color":"yellow","bold":true}
function rpgpve:game/sidebar/load
function rpgpve:game/sidebar/update_all

# npcs
team add nocol
team modify nocol collisionRule never 

# Arrows
scoreboard objectives add HasCustomArrow dummy

# Total Kills
scoreboard objectives add TotalKills dummy

# Mob team
team add rpg_mob
team modify rpg_mob friendlyFire false
team modify rpg_mob color dark_red

# Bosses 
bossbar add rpgpve:nether_lord {"text":"Nether Lord","color":"dark_red","underlined": true}
bossbar add rpgpve:spectral_devourer {"text":"Spectral Devourer","color":"light_purple","underlined": true}
bossbar add rpgpve:troll_bro_x {"text":"Troll Bro X","color":"green","underlined": true}
bossbar add rpgpve:troll_bro_z {"text":"Troll Bro Z","color":"dark_purple","underlined": true}

bossbar add rpgpve:ender_dragon {"text":"Ender Dragon","color":"dark_purple","underlined": true}

scoreboard objectives add Attack1Timer dummy
scoreboard objectives add Attack1Delay dummy
scoreboard objectives add Attack2Timer dummy
scoreboard objectives add Attack2Delay dummy
scoreboard objectives add Attack3Timer dummy
scoreboard objectives add Attack3Delay dummy
scoreboard objectives add Attack4Timer dummy
scoreboard objectives add Attack4Delay dummy
scoreboard objectives add Attack5Timer dummy
scoreboard objectives add Attack5Delay dummy

team add sd_purpleshield
team add sd_blackshield 

team modify sd_purpleshield color dark_purple
team modify sd_blackshield color black

team add blockhighlight
team modify blockhighlight color gold

# GameSettings
scoreboard objectives add LostCoins dummy

# get waves data
function rpgpve:game/battle_wave/monsters/game_spawn/waves_data

# Magic Era Anvils
scoreboard objectives add AnvilCooldown dummy
#----------------------------------------#
