#Table in book fusion mode

#https://www.youtube.com/watch?v=gY0Q1hLu-ms

#GUI placement
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:0b}]} run item replace block ~ ~ ~ container.0 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:1b}]} run item replace block ~ ~ ~ container.1 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:3b}]} run item replace block ~ ~ ~ container.3 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:5b}]} run item replace block ~ ~ ~ container.5 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:6b}]} run item replace block ~ ~ ~ container.6 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:7b}]} run item replace block ~ ~ ~ container.7 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:8b}]} run item replace block ~ ~ ~ container.8 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}

execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:9b}]} run item replace block ~ ~ ~ container.9 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:10b}]} run item replace block ~ ~ ~ container.10 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}

execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:11b}]} run item replace block ~ ~ ~ container.11 with orange_stained_glass_pane{CustomModelData:8,Forbidden:1b,display:{Name:'{"text":""}'}}

execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:12b}]} run item replace block ~ ~ ~ container.12 with orange_stained_glass_pane{CustomModelData:2,Forbidden:1b,display:{Name:'{"text":""}'}}

execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:13b}]} run item replace block ~ ~ ~ container.13 with orange_stained_glass_pane{CustomModelData:8,Forbidden:1b,display:{Name:'{"text":""}'}}

execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:14b}]} run item replace block ~ ~ ~ container.14 with orange_stained_glass_pane{CustomModelData:3,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:15b}]} run item replace block ~ ~ ~ container.15 with orange_stained_glass_pane{CustomModelData:4,Forbidden:1b,display:{Name:'{"text":""}'}}

execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:18b}]} run item replace block ~ ~ ~ container.18 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:19b}]} run item replace block ~ ~ ~ container.19 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:20b}]} run item replace block ~ ~ ~ container.20 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:21b}]} run item replace block ~ ~ ~ container.21 with orange_stained_glass_pane{CustomModelData:9,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:22b}]} run item replace block ~ ~ ~ container.22 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:23b}]} run item replace block ~ ~ ~ container.23 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:24b}]} run item replace block ~ ~ ~ container.24 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:25b}]} run item replace block ~ ~ ~ container.25 with orange_stained_glass_pane{CustomModelData:1,Forbidden:1b,display:{Name:'{"text":""}'}}

#TODO: simplify isBook score set process
#IsBook
execute as @s at @s if data block ~ ~ ~ {Items:[{Slot:11b,id:"minecraft:enchanted_book"}]} run scoreboard players set @s isBook11 0
execute as @s at @s if data block ~ ~ ~ {Items:[{Slot:13b,id:"minecraft:enchanted_book"}]} run scoreboard players set @s isBook13 0

# Cycle 11
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:2b}]} run item replace block ~ ~ ~ container.2 with orange_stained_glass_pane{CustomModelData:5,Cycle11:1b,display:{Name:'{"text":"Cycle enchantments","italic": false}',Lore:['{"text":"Change the selected","italic": false,"color": "gray"}','{"text":"enchantment, which is","italic": false,"color": "gray"}','{"text":"the highest in the list","italic": false,"color": "gray"}']}}
execute as @a at @s store success score @s cycle11 run clear @s orange_stained_glass_pane{Cycle11:1b}
execute as @e[type=player,limit=1,scores={cycle11=1}] at @s run scoreboard players set @e[type=armor_stand,name="enchantomega",limit=1,sort=nearest] cycle11 1
execute as @e[type=player,limit=1,scores={cycle11=1}] run execute as @e[type=armor_stand,name="enchantomega",scores={cycle11=1,isBook11=0}] at @s run function enchantments:cycle/11
execute as @e[type=player,limit=1,scores={cycle11=1}] run playsound ui.button.click block @s ~ ~ ~ 1
scoreboard players reset @e[type=armor_stand,name="enchantomega",scores={cycle11=1}] sameEnchantment
scoreboard players reset @e cycle11

#Cycle 13
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:4b}]} run item replace block ~ ~ ~ container.4 with orange_stained_glass_pane{CustomModelData:5,Cycle13:1b,display:{Name:'{"text":"Cycle enchantments","italic": false}',Lore:['{"text":"Change the selected","italic": false,"color": "gray"}','{"text":"enchantment, which is","italic": false,"color": "gray"}','{"text":"the highest in the list","italic": false,"color": "gray"}']}}
execute as @a at @s store success score @s cycle13 run clear @s orange_stained_glass_pane{Cycle13:1b}
execute as @e[type=player,limit=1,scores={cycle13=1}] at @s run scoreboard players set @e[type=armor_stand,name="enchantomega",limit=1,sort=nearest] cycle13 1
execute as @e[type=player,limit=1,scores={cycle13=1}] run execute as @e[type=armor_stand,name="enchantomega",scores={cycle13=1,isBook13=0}] at @s run function enchantments:cycle/13
execute as @e[type=player,limit=1,scores={cycle13=1}] run playsound ui.button.click block @s ~ ~ ~ 1
scoreboard players reset @e[type=armor_stand,name="enchantomega",scores={cycle13=1}] sameEnchantment
scoreboard players reset @e cycle13

#Get levels
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:17b}]} run item replace block ~ ~ ~ container.17 with orange_stained_glass_pane{CustomModelData:6,SeeEnchCost:1b,display:{Name:'{"text":"Level cost","italic": false,"color": "gold"}',Lore:['{"text":"Click to preview","italic": false,"color": "gray"}','{"text":"how many levels","italic": false,"color": "gray"}','{"text":"this will cost","italic": false,"color": "gray"}']}}
execute as @a at @s store success score @s seeEnchCost run clear @s orange_stained_glass_pane{SeeEnchCost:1b}
execute as @s[scores={isBook11=0,isBook13=0,sameEnchantment=0}] at @s run tellraw @a[scores={seeEnchCost=1}] ["",{"text":"Enchantment cost: ","color":"gold"},{"score":{"name":"@e[type=armor_stand,name=\"enchantomega\",limit=1,sort=nearest]","objective":"enchCost"},"bold":true,"color":"gold"}]
scoreboard players reset @a seeEnchCost

#Place the result book
execute as @s[scores={isBook11=0,isBook13=0}] at @s unless data block ~ ~ ~ {Items:[{Slot:16b}]} if data block ~ ~ ~ {Items:[{Slot:21b,id:"minecraft:book"}]} run function enchantments:tablemodes/0newbook
execute as @s at @s if data block ~ ~ ~ {Items:[{Slot:16b,tag:{Crafted:1b}}]} unless data block ~ ~ ~ {Items:[{Slot:21b,id:"minecraft:book"}]} run data remove block ~ ~ ~ Items[{Slot:16b}]
execute as @s at @s unless score @s isBook11 matches 0 if data block ~ ~ ~ {Items:[{Slot:16b,tag:{Crafted:1b}}]} run data remove block ~ ~ ~ Items[{Slot:16b}]
execute as @s at @s unless score @s isBook13 matches 0 if data block ~ ~ ~ {Items:[{Slot:16b,tag:{Crafted:1b}}]} run data remove block ~ ~ ~ Items[{Slot:16b}]
execute as @s at @s unless score @s sameEnchantment matches 0 if data block ~ ~ ~ {Items:[{Slot:16b,tag:{Crafted:1b}}]} run data remove block ~ ~ ~ Items[{Slot:16b}]

#Confirm
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:26b}]} run item replace block ~ ~ ~ container.26 with orange_stained_glass_pane{CustomModelData:7,Confirm:1b,display:{Name:'{"text":""}'}}
execute as @a at @s store success score @s confirm run clear @s orange_stained_glass_pane{Confirm:1b}
execute as @a[scores={confirm=1}] at @s run execute as @e[type=armor_stand,name="enchantomega",limit=1,sort=nearest] at @s if data block ~ ~ ~ {Items:[{Slot:16b,tag:{Crafted:1b}}]} run function enchantments:tablemodes/0confirm
scoreboard players reset @a confirm

scoreboard players reset @e[type=armor_stand,name="enchantomega"] isBook11
scoreboard players reset @e[type=armor_stand,name="enchantomega"] isBook13

#give @s stone{display:{Lore:[{"text":enchantomega}]}}