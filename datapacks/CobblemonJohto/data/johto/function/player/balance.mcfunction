scoreboard players set @s balance 0
tellraw @s ["",{"text":"Current Balance: ","color":"gray"},{"text":"₽","color":"green"},{"score":{"name":"@s","objective":"Money"},"color":"green"}]