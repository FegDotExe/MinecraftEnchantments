# Used to test if the slot 11 is an enchanted book
execute as @s at @s if data block ~ ~ ~ {Items:[{Slot:11b,id:"minecraft:enchanted_book"}]} run scoreboard players set @s isBook11 0