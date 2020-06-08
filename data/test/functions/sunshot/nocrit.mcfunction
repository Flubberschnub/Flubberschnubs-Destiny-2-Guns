##nocrit
#execute if score Range shootgun matches ..24 run effect give @e[distance=..1,type=#minecraft:mobs,type=!#minecraft:undead] instant_damage 1 2 true
#execute if score Range shootgun matches ..24 run effect give @e[distance=..1,type=#minecraft:mobs,type=#minecraft:undead] instant_health 1 2 true
#execute if score Range shootgun matches 25.. run effect give @e[distance=..1,type=#minecraft:mobs,type=!#minecraft:undead] instant_damage 1 1 true
#execute if score Range shootgun matches 25.. run effect give @e[distance=..1,type=#minecraft:mobs,type=#minecraft:undead] instant_health 1 1 true
execute if score Range shootgun matches 0.. run effect give @a[distance=..1,tag=!shooter] instant_damage 1 0 true
execute positioned ~ ~ ~ if entity @e[distance=..1,type=#minecraft:mobs,scores={hp=..12}] if score Range shootgun matches 25.. run scoreboard players set Kill shootgun 1
execute positioned ~ ~ ~ if entity @e[distance=..1,type=#minecraft:mobs,scores={hp=..24}] if score Range shootgun matches ..24 run scoreboard players set Kill shootgun 1
execute as @e[distance=..1,type=#minecraft:mobs] if score Range shootgun matches 25.. run scoreboard players set @s aestd.damage 1200
execute as @e[distance=..1,type=#aestd1:bosses] if score Range shootgun matches 25.. run scoreboard players set @s aestd.damage 1200
execute as @e[distance=..1,type=#minecraft:mobs] if score Range shootgun matches ..24 run scoreboard players set @s aestd.damage 2400
execute as @e[distance=..1,type=#aestd1:bosses] if score Range shootgun matches ..24 run scoreboard players set @s aestd.damage 2400
execute as @e[distance=..1,type=#minecraft:mobs] run function aestd1:entity/damage
execute as @e[distance=..1,type=#aestd1:bosses] run function aestd1:entity/damage
scoreboard players reset @e aestd.damage
execute positioned ~ ~ ~ if entity @a[distance=..1,tag=!shooter,scores={hp=..6}] run scoreboard players set Kill shootgun 1
execute if score Kill shootgun matches 1 if score Range shootgun matches 25.. run summon minecraft:creeper ~ ~ ~ {powered:1b,Fuse:1,ignited:1b,CustomName:'{"text":"Sun Blast"}'}
execute if score Kill shootgun matches 1 if score Range shootgun matches 25.. run particle flame ~ ~ ~ 0 0 0 0.1 200 force
execute if score Kill shootgun matches 1 at @s run playsound kill master @s
scoreboard players reset Kill shootgun
