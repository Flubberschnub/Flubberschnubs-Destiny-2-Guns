##hit
execute store result score @s hp run data get entity @s Health 1
execute if score @s[type=!player] hp matches ..15 at @s run function guns:graviton/cosmology/summon
scoreboard players set @s[type=!player] aestd.damage 1500
execute as @s[type=!player] run function aestd1:entity/damage
execute as @s[type=player] run effect give @s instant_damage 1 0 true
execute at @s run kill @e[type=area_effect_cloud,tag=cosmology,limit=1,sort=nearest]
scoreboard players reset @s cosmotarget
