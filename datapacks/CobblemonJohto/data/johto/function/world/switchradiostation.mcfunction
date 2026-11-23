# Store slot of radio in temp score for comparison
execute store result score @s RadioSelectTemp run data get entity @s Inventory.[{components:{"minecraft:custom_name":'{"extra":[{"color":"aqua","italic":false,"text":"Radio"}],"text":""}'}}].Slot
execute unless score @s RadioSelectTemp matches 2..7 run scoreboard players set @s RadioSelectTemp 1
scoreboard players add @s RadioSelectTemp 1

# Compare, exit if slot hasn't changed
execute if score @s RadioSelectTemp = @s RadioSelect run return fail

# Store
scoreboard players operation @s RadioSelect = @s RadioSelectTemp

# Re-resolve musictitles if intentionally set to 0
execute if score @s MusicTitles matches 0 at @s run function johto:world/musictitles

# If not tuned into a radio station, refresh music
execute unless score @s RadioSelect matches 3..8 run function johto:tools/forceclick
execute unless score @s RadioSelect matches 3..8 run runmolangscript cobblemon:fade_music @s
runmolang "q.entity.data.sound.mus_radiostation = 0"

# Else, let radiostations function handle it
execute if score @s RadioSelect matches 3..8 run function johto:world/radiostations
scoreboard players set @s RadioSelectTemp 0
