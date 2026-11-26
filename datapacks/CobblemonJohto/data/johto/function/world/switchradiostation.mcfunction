# Store slot of radio in temp score for comparison
execute store result score @s RadioSelectTemp run data get entity @s Inventory.[{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Radio"}],"text":""}'}}].Slot
execute unless score @s RadioSelectTemp matches 2..7 run scoreboard players set @s RadioSelectTemp 1
scoreboard players add @s RadioSelectTemp 1

# Compare, exit if slot hasn't changed
execute if score @s RadioSelectTemp = @s RadioSelect run return fail

# Fade (switching slot or sound mode)
execute unless score @s RadioSelect matches 0 run runmolang "q.run_script('cobblemon:fade_music', 667)" @s

# Kill (refresh or cold start)
execute if score @s RadioSelect matches 0 run stopsound @s music
execute if score @s RadioSelect matches 0 run runmolang "q.run_script('cobblemon:fade_music', 0)" @s

# Store
scoreboard players operation @s RadioSelect = @s RadioSelectTemp

# Re-resolve musictitles if intentionally set to 0 (cold start or switching sound mode)
execute if score @s MusicTitles matches 0 at @s run function johto:world/musictitles

# TODO: Update radio station
function johto:world/radiostations
