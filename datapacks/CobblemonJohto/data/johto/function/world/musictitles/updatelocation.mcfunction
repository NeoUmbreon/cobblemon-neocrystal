# Lookup music track
$runmolang "q.run_script('request_location_music', '$(location)')" @s

# Remove certain tags on location change
execute unless score @s MusicTitles matches 0 run tag @s remove GrassCooldown
execute unless score @s MusicTitles matches 0 run tag @s remove CyclingMusic

# Update score
$scoreboard players set @s MusicTitles $(location)
