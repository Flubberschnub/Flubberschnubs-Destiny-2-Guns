##summon
execute positioned ~ ~ ~ run particle dust 0.588 0.122 1.000 .7 ~ ~1 ~ 0.5 1 0.5 3 200
execute positioned ~ ~ ~ run playsound cosmoboom master @a[distance=..30] ~ ~ ~ 1
tag @s add cosmoimmune
execute positioned ~ ~ ~ as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 0.. run scoreboard players set @s cosmotarget 0
execute positioned ~ ~ ~ as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 0.. run scoreboard players set @s cosmotarget 0
execute positioned ~ ~ ~ as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 0.. run scoreboard players set @s cosmotarget 0
execute positioned ~ ~ ~ as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 0.. run scoreboard players set @s cosmotarget 0
execute positioned ~ ~ ~ as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 0.. run scoreboard players set @s cosmotarget 0
tag @e[tag=cosmoimmune] remove cosmoimmune
execute positioned ~ ~.5 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"portal",Duration:40,Tags:["cosmology"]}
execute positioned ~ ~.5 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"portal",Duration:42,Tags:["cosmology"]}
execute positioned ~ ~.5 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"portal",Duration:44,Tags:["cosmology"]}
execute positioned ~ ~.5 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"portal",Duration:46,Tags:["cosmology"]}
execute positioned ~ ~.5 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"portal",Duration:48,Tags:["cosmology"]}
execute as @e[tag=cosmology] unless score @s Constant matches 1.. run scoreboard players set @s Constant 0
execute as @e[tag=cosmology,limit=1,scores={Constant=0}] run scoreboard players set @s Constant 1
execute as @e[tag=cosmology,limit=1,scores={Constant=0}] run scoreboard players set @s Constant 2
execute as @e[tag=cosmology,limit=1,scores={Constant=0}] run scoreboard players set @s Constant 3
execute as @e[tag=cosmology,limit=1,scores={Constant=0}] run scoreboard players set @s Constant 4
execute as @e[tag=cosmology,limit=1,scores={Constant=0}] run scoreboard players set @s Constant 5
execute as @e[tag=cosmology,scores={Constant=1}] unless entity @e[scores={cosmotarget=1}] run scoreboard players set @e[scores={cosmotarget=0},limit=1] cosmotarget 1
execute as @e[tag=cosmology,scores={Constant=2}] unless entity @e[scores={cosmotarget=2}] run scoreboard players set @e[scores={cosmotarget=0},limit=1] cosmotarget 2
execute as @e[tag=cosmology,scores={Constant=3}] unless entity @e[scores={cosmotarget=3}] run scoreboard players set @e[scores={cosmotarget=0},limit=1] cosmotarget 3
execute as @e[tag=cosmology,scores={Constant=4}] unless entity @e[scores={cosmotarget=4}] run scoreboard players set @e[scores={cosmotarget=0},limit=1] cosmotarget 4
execute as @e[tag=cosmology,scores={Constant=5}] unless entity @e[scores={cosmotarget=5}] run scoreboard players set @e[scores={cosmotarget=0},limit=1] cosmotarget 5
