##main tick function for cosmology
execute as @e[type=area_effect_cloud,tag=cosmology] at @s run function guns:graviton/cosmology/track
execute unless entity @e[tag=cosmology] run scoreboard players reset @e cosmotarget
