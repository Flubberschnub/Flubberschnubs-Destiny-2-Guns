##raycast
scoreboard players reset Crit shootgun
execute positioned ~ ~ ~ if score Range shootgun matches 10.. run playsound bulletwhistle master @a[distance=..3.5]
execute if score Range shootgun matches 2 at @s anchored eyes run particle flash ^ ^ ^0.2 0 0 0 0 1 normal @s
execute unless block ~ ~ ~ #minecraft:batonblocks run scoreboard players set FINISH shootgun 1
execute positioned ~ ~-0.9 ~ if entity @e[distance=..1,type=#minecraft:mobs] if score Range shootgun matches 0.. run scoreboard players set FINISH shootgun 1
execute positioned ~ ~-0.9 ~ if entity @e[distance=..1,type=#aestd1:bosses] if score Range shootgun matches 0.. run scoreboard players set FINISH shootgun 1
execute positioned ~ ~-0.9 ~ if entity @e[distance=..1,type=#minecraft:mobs] if score Range shootgun matches 0.. at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 10 2
execute positioned ~ ~-0.9 ~ if entity @e[distance=..1,type=#aestd1:bosses] if score Range shootgun matches 0.. at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 10 2
execute positioned ~ ~-0.9 ~ as @e[distance=..1,type=#minecraft:mobs] positioned ~ ~0.2 ~ unless entity @s[distance=..1] if score Range shootgun matches 0.. at @s run scoreboard players set Crit shootgun 1
execute positioned ~ ~-0.9 ~ as @e[distance=..1,type=#aestd1:bosses] positioned ~ ~0.2 ~ unless entity @s[distance=..1] if score Range shootgun matches 0.. at @s run scoreboard players set Crit shootgun 1
execute positioned ~ ~-0.9 ~ as @a[distance=..1,tag=!shooter] positioned ~ ~0.2 ~ unless entity @s[distance=..1] if score Range shootgun matches 0.. at @s run scoreboard players set Crit shootgun 1
execute positioned ~ ~-0.9 ~ if entity @a[distance=..1,tag=!shooter] if score Range shootgun matches 0.. run scoreboard players set FINISH shootgun 1
execute positioned ~ ~-0.9 ~ if entity @a[distance=..1,tag=!shooter] if score Range shootgun matches 0.. at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 10 2
execute if score Crit shootgun matches 1 at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 0.3 2
execute if score Crit shootgun matches 1 positioned ~ ~ ~ run particle angry_villager ~ ~ ~ 0 0 0 0.1 1
execute as @e[distance=..2] run execute store result score @s hp run data get entity @s Health 1
#execute if score FINISH shootgun matches 1 run tag @e[distance=..2,type=#minecraft:mobs] add sunkissed
#execute if score FINISH shootgun matches 1 run tag @a[distance=..2] add sunkissed
#execute store result score sunshotcount Constant run execute if entity @e[tag=sunkissed]
execute store result score TEMP1 Constant run scoreboard players get sunshotcount Constant
execute if score Range shootgun matches 8.. run particle minecraft:mycelium ~ ~ ~ 0 0 0 0 1
scoreboard players add Range shootgun 1
execute if score Range shootgun matches 100.. run scoreboard players set FINISH shootgun 1
#execute if score FINISH shootgun matches 1 run summon pufferfish
execute if score FINISH shootgun matches 1 unless block ^ ^ ^.5 #minecraft:batonblocks run particle lava ^ ^ ^-0.5 0 0 0 0.5 5 force
execute positioned ^ ^ ^0.5 unless score FINISH shootgun matches 1 run function test:sunshot/raycast
execute if score FINISH shootgun matches 1 run scoreboard players operation TEST shootgun = Range shootgun
execute positioned ~ ~-0.9 ~ if score FINISH shootgun matches 1 unless score Crit shootgun matches 1 run function test:sunshot/nocrit
execute positioned ~ ~-0.9 ~ if score FINISH shootgun matches 1 if score Crit shootgun matches 1 run function test:sunshot/crit
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
