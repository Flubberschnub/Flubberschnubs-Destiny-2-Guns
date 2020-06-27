##raycast
scoreboard players reset Crit shootgun
execute positioned ~ ~ ~ if score Range shootgun matches 10.. run playsound bulletwhistle master @a[distance=..3.5]
##particles
execute as @s[tag=ads] if score Range shootgun matches 2 if score @s riflepulse matches 1 at @s anchored eyes run particle dust 0.588 0.122 1.000 0.06 ^ ^ ^0.1 0 0 0 1 20 normal @s
execute as @s[tag=ads] if score Range shootgun matches 2 unless score @s riflepulse matches 1 at @s anchored eyes run particle dust 1.000 0.655 0.478 0.1 ^ ^ ^0.1 0.01 0.01 0.01 1 5 normal @s
#execute as @s[tag=ads] if score Range shootgun matches 2 unless score @s riflepulse matches 1 at @s anchored eyes run particle dust 0.588 0.122 1.000 0.1 ^ ^ ^0.1 0.01 0.01 0.01 1 2 normal @s
execute as @s[tag=!ads] if score Range shootgun matches 2 if score @s riflepulse matches 1 at @s anchored eyes run particle dust 0.588 0.122 1.000 0.06 ^-.03 ^ ^0.1 0 0 0 1 20 normal @s
execute as @s[tag=!ads] if score Range shootgun matches 2 unless score @s riflepulse matches 1 at @s anchored eyes run particle dust 1.000 0.655 0.478 0.1 ^-.03 ^ ^0.1 0.01 0.01 0.01 1 5 normal @s
#execute as @s[tag=!ads] if score Range shootgun matches 2 unless score @s riflepulse matches 1 at @s anchored eyes run particle dust 0.588 0.122 1.000 0.1 ^-.03 ^ ^0.1 0.01 0.01 0.01 1 2 normal @s
execute if score Range shootgun matches 8.. run particle minecraft:mycelium ~ ~ ~ 0 0 0 0 1
execute if score Range shootgun matches 8.. if score @s riflepulse matches 1 run particle dust 0.588 0.122 1.000 .5 ~ ~ ~ 0 0 0 3 1
execute if score Range shootgun matches 8.. unless score @s riflepulse matches 1 run particle dust 1.000 0.655 0.478 .5 ~ ~ ~ 0 0 0 3 1

execute unless block ~ ~ ~ #guns:passthrough run scoreboard players set FINISH shootgun 1
execute positioned ~ ~-0.9 ~ if entity @e[distance=..1,type=#guns:mobs] if score Range shootgun matches 0.. run scoreboard players set FINISH shootgun 1
execute positioned ~ ~-0.9 ~ if entity @e[distance=..1,type=#aestd1:bosses] if score Range shootgun matches 0.. run scoreboard players set FINISH shootgun 1
execute positioned ~ ~-0.9 ~ if entity @e[distance=..1,type=#guns:mobs] if score Range shootgun matches 0.. at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 10 2
execute positioned ~ ~-0.9 ~ if entity @e[distance=..1,type=#aestd1:bosses] if score Range shootgun matches 0.. at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 10 2
execute positioned ~ ~-0.9 ~ as @e[distance=..1,type=#guns:mobs] positioned ~ ~0.2 ~ unless entity @s[distance=..1] if score Range shootgun matches 0.. at @s run scoreboard players set Crit shootgun 1
execute positioned ~ ~-0.9 ~ as @e[distance=..1,type=#aestd1:bosses] positioned ~ ~0.2 ~ unless entity @s[distance=..1] if score Range shootgun matches 0.. at @s run scoreboard players set Crit shootgun 1
execute positioned ~ ~-0.9 ~ as @a[distance=..1,tag=!shooter] positioned ~ ~0.2 ~ unless entity @s[distance=..1] if score Range shootgun matches 0.. at @s run scoreboard players set Crit shootgun 1
execute positioned ~ ~-0.9 ~ if entity @a[distance=..1,tag=!shooter] if score Range shootgun matches 0.. run scoreboard players set FINISH shootgun 1
execute positioned ~ ~-0.9 ~ if entity @a[distance=..1,tag=!shooter] if score Range shootgun matches 0.. at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 10 2
execute if score Crit shootgun matches 1 at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 0.3 2
execute if score Crit shootgun matches 1 positioned ~ ~ ~ run particle angry_villager ~ ~ ~ 0 0 0 0.1 1
execute as @e[distance=..2] run execute store result score @s hp run data get entity @s Health 1
#execute if score FINISH shootgun matches 1 run tag @e[distance=..2,type=#guns:mobs] add sunkissed
#execute if score FINISH shootgun matches 1 run tag @a[distance=..2] add sunkissed
#execute store result score sunshotcount Constant run execute if entity @e[tag=sunkissed]
execute store result score TEMP1 Constant run scoreboard players get sunshotcount Constant
scoreboard players add Range shootgun 1
execute if score Range shootgun matches 150.. run scoreboard players set FINISH shootgun 1
#execute if score FINISH shootgun matches 1 run summon pufferfish
execute if score FINISH shootgun matches 1 unless block ^ ^ ^.5 #guns:passthrough run particle dust 0.588 0.122 1.000 1 ^ ^ ^-.5 .3 .6 .3 10 20 force
execute positioned ^ ^ ^0.5 unless score FINISH shootgun matches 1 run function guns:graviton/raycast
execute if score FINISH shootgun matches 1 run scoreboard players operation TEST shootgun = Range shootgun
execute positioned ~ ~-0.9 ~ if score FINISH shootgun matches 1 unless score Crit shootgun matches 1 run function guns:graviton/nocrit
execute positioned ~ ~-0.9 ~ if score FINISH shootgun matches 1 if score Crit shootgun matches 1 run function guns:graviton/crit
#execute if score FINISH shootgun matches 1 store result score sunshotcount2 Constant run execute if entity @e[tag=sunkissed]
#execute if score FINISH shootgun matches 1 unless score sunshotcount2 Constant = sunshotcount Constant run say wow
#execute store result score TEMP Constant run scoreboard players get sunshotcount2 Constant
execute if score FINISH shootgun matches 1 run scoreboard players reset Range shootgun
#execute if score FINISH shootgun matches 1 run scoreboard players reset sunshotcount Constant
#execute if score FINISH shootgun matches 1 run scoreboard players reset sunshotcount2 Constant
#execute if score FINISH shootgun matches 1 run tag @e[tag=sunkissed] remove sunkissed
execute if score FINISH shootgun matches 1 run scoreboard players reset Crit shootgun
execute if score FINISH shootgun matches 1 run tag @s remove shooter
execute if score FINISH shootgun matches 1 run scoreboard players reset FINISH shootgun
