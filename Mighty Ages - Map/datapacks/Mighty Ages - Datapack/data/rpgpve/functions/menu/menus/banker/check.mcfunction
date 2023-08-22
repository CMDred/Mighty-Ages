#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
execute if score SharedPurse GameSettings matches 0 run function rpgpve:menu/menus/banker/no_shared_purse
execute if score SharedPurse GameSettings matches 1.. run function rpgpve:menu/menus/banker/shared_purse
#------------------------------------------#