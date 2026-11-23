#-------------------------------------
# 1. Forceload
#-------------------------------------
# Resurrect birdkeeperbret
forceload add -3199 -342

#-------------------------------------
# 2. Check if loaded
#-------------------------------------
# Resurrect birdkeeperbret
execute unless loaded -3199 0 -342 run return fail

#-------------------------------------
# 3. Run & remove forceloads
#-------------------------------------
# Resurrect birdkeeperbret
execute positioned -3199 64 -342 run npcdelete @n[name=Bert,distance=0]
npcspawnat -3199 64 -342 birdkeeperbret
forceload remove -3199 -342

#-------------------------------------
# 4. Forceload unnecessary commands
#-------------------------------------

# Tutors
npcspawnat 586 64 -670 ilexforest_headbutttutor
npcspawnat -600 64.0625 169 blackthorn_startermovetutor
npcspawnat -593 64.0625 169 blackthorn_dracometeortutor
