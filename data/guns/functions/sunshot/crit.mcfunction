##nocrit
#execute if score Range shootgun matches ..24 run effect give @e[distance=..1,type=#guns:mobs,type=!#minecraft:undead] instant_damage 1 2 true
#execute if score Range shootgun matches ..24 run effect give @e[distance=..1,type=#guns:mobs,type=#minecraft:undead] instant_health 1 2 true
#execute if score Range shootgun matches 25.. run effect give @e[distance=..1,type=#guns:mobs,type=!#minecraft:undead] instant_damage 1 1 true
#execute if score Range shootgun matches 25.. run effect give @e[distance=..1,type=#guns:mobs,type=#minecraft:undead] instant_health 1 1 true
execute as @s run function aestd1:entity/get_uuid
execute if score Range shootgun matches 0.. run effect give @a[distance=..1,tag=!shooter] instant_damage 1 1 true
execute positioned ~ ~ ~ if entity @e[distance=..1,type=#guns:mobs,scores={hp=..24}] run scoreboard players set Kill shootgun 1
tag @e[distance=..1,type=#guns:mobs] add aestd.damage.hurt_by_player
tag @e[distance=..1,type=#aestd1:bosses] add aestd.damage.hurt_by_player
execute as @e[distance=..1,type=#guns:mobs] run scoreboard players set @s aestd.damage 2400
execute as @e[distance=..1,type=#aestd1:bosses] run scoreboard players set @s aestd.damage 2400
execute as @e[distance=..1,type=#guns:mobs] run function aestd1:entity/damage
execute as @e[distance=..1,type=#aestd1:bosses] run function aestd1:entity/damage
scoreboard players reset @e aestd.damage
tag @e[tag=aestd.damage.hurt_by_player] remove aestd.damage.hurt_by_player
execute positioned ~ ~ ~ if entity @a[distance=..1,tag=!shooter,scores={hp=..12}] run scoreboard players set Kill shootgun 1
execute if score Kill shootgun matches 1 if score Range shootgun matches 25.. run summon minecraft:creeper ~ ~ ~ {powered:1b,Fuse:1,ignited:1b,CustomName:'{"text":"Sun Blast"}'}
execute if score Kill shootgun matches 1 if score Range shootgun matches 25.. run particle flame ~ ~ ~ 0 0 0 0.1 200 force
execute if score Kill shootgun matches 1 at @s run playsound kill master @s
scoreboard players reset Kill shootgun
