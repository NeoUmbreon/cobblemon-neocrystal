scoreboard players add @s Money 0
scoreboard players operation @s WhiteoutMoney < @s Money
scoreboard players operation @s Money -= @s WhiteoutMoney
execute if score @s WhiteoutMoney matches 1.. run tellraw @s ["",{"text":"You panicked and dropped ₽","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"WhiteoutMoney"},"italic":true,"color":"gray"},{"text":"...","italic":true,"color":"gray"}]
scoreboard players reset @s WhiteoutMoney