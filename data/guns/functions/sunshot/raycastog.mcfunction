##raycast
scoreboard players reset Crit shootgun
execute positioned ~ ~ ~ if score Range shootgun matches 5.. run playsound bulletwhistle master @a[distance=..3.5]
execute if score Range shootgun matches 1 at @s anchored eyes run particle flash ^ ^ ^0.2 0 0 0 0 1
execute unless block ~ ~ ~ #guns:passthrough run scoreboard players set FINISH shootgun 1
execute positioned ~ ~-0.5 ~ if entity @e[distance=..1.5,type=#guns:mobs] if score Range shootgun matches 4.. run scoreboard players set FINISH shootgun 1
execute positioned ~ ~-0.5 ~ if entity @e[distance=..1.5,type=#guns:mobs] if score Range shootgun matches 4.. at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 10 2
execute positioned ~ ~-0.5 ~ as @e[distance=..1.5,type=#guns:mobs] positioned ~ ~0.25 ~ unless entity @s[distance=..1.3] if score Range shootgun matches 4..30 at @s run scoreboard players set Crit shootgun 1
execute positioned ~ ~-0.5 ~ as @a[distance=..1.5] positioned ~ ~0.25 ~ unless entity @s[distance=..1.3] if score Range shootgun matches 4..30 at @s run scoreboard players set Crit shootgun 1
execute positioned ~ ~-0.5 ~ if entity @e[distance=..1.5,type=player] if score Range shootgun matches 4.. run scoreboard players set FINISH shootgun 1
execute positioned ~ ~-0.5 ~ if entity @e[distance=..1.5,type=player] if score Range shootgun matches 4.. at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 10 2
execute if score Crit shootgun matches 1 at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 0.3 2
execute if score Crit shootgun matches 1 positioned ~ ~ ~ run particle angry_villager ~ ~ ~ 0 0 0 0.1 1
execute as @e[distance=..2] run execute store result score @s hp run data get entity @s Health 1
#execute if score FINISH shootgun matches 1 run tag @e[distance=..2,type=#guns:mobs] add sunkissed
#execute if score FINISH shootgun matches 1 run tag @a[distance=..2] add sunkissed
#execute store result score sunshotcount Constant run execute if entity @e[tag=sunkissed]
execute store result score TEMP1 Constant run scoreboard players get sunshotcount Constant
particle minecraft:mycelium ~ ~ ~ 0 0 0 0 1
scoreboard players add Range shootgun 1
execute if score Range shootgun matches 50.. run scoreboard players set FINISH shootgun 1
#execute if score FINISH shootgun matches 1 run summon pufferfish
execute if score FINISH shootgun matches 1 unless block ^ ^ ^.5 #guns:passthrough run particle lava ^ ^ ^-0.5 0 0 0 0.5 5 force
execute positioned ^ ^ ^1 unless score FINISH shootgun matches 1 run function guns:sunshot/raycast
execute if score FINISH shootgun matches 1 run scoreboard players operation TEST shootgun = Range shootgun
execute positioned ~ ~-0.5 ~ if score FINISH shootgun matches 1 run function guns:sunshot/nocrit
#execute if score FINISH shootgun matches 1 store result score sunshotcount2 Constant run execute if entity @e[tag=sunkissed]
#execute if score FINISH shootgun matches 1 unless score sunshotcount2 Constant = sunshotcount Constant run say wow
#execute store result score TEMP Constant run scoreboard players get sunshotcount2 Constant
execute if score FINISH shootgun matches 1 run scoreboard players reset Range shootgun
#execute if score FINISH shootgun matches 1 run scoreboard players reset sunshotcount Constant
#execute if score FINISH shootgun matches 1 run scoreboard players reset sunshotcount2 Constant
#execute if score FINISH shootgun matches 1 run tag @e[tag=sunkissed] remove sunkissed
execute if score FINISH shootgun matches 1 run scoreboard players reset Crit shootgun
execute if score FINISH shootgun matches 1 run scoreboard players reset FINISH shootgun
