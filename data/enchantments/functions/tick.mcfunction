#TODO: change this, as it is temporary
execute as @e[type=armor_stand,name="enchantomega"] at @s if block ~ ~ ~ air run kill @s

execute as @e[type=armor_stand,name="enchantomega",scores={tableMode=0}] at @s if block ~ ~ ~ barrel run function enchantments:tablemodes/0


clear @a orange_stained_glass_pane{Forbidden:1b}
clear @a enchanted_book{Crafted:1b}