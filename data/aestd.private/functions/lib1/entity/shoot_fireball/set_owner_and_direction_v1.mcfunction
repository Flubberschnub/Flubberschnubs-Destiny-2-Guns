execute positioned as @s positioned ^ ^ ^40 run function aestd1:entity/set_direction_from_position
data modify storage aestd:private FireballPower set from entity @s direction
execute store result storage aestd:private FireballPower[0] double 0.00001 run data get storage aestd:private FireballPower[0] 1000
execute store result storage aestd:private FireballPower[1] double 0.00001 run data get storage aestd:private FireballPower[1] 1000
execute store result storage aestd:private FireballPower[2] double 0.00001 run data get storage aestd:private FireballPower[2] 1000
data modify entity @s power set from storage aestd:private FireballPower

data merge entity @s {OwnerUUIDLeast: 0L, OwnerUUIDMost: 0L, direction: [0.0d, 0.0d, 0.0d]}
data modify entity @s OwnerUUIDLeast set from storage aestd:private Owner.UUIDLeast
data modify entity @s OwnerUUIDMost set from storage aestd:private Owner.UUIDMost

tag @e[type=minecraft:fireball, tag=aestd.new, limit=1] remove aestd.new