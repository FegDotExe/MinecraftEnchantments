# Used to test if the slot 13 is an enchanted book
execute as @s at @s if data block ~ ~ ~ {Items:[{Slot:13b,id:"minecraft:enchanted_book"}]} run scoreboard players set @s isBook13 0