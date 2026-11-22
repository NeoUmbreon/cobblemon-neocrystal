# Lookup music track
$runmolang "q.run_script('request_location_music', '$(location)')" @s

# Remove certain tags on location change
tag @s remove GrassCooldown
tag @s remove CyclingMusic

# Update score
$scoreboard players set @s MusicTitles $(location)