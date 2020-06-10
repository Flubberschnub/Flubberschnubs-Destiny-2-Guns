##decoil
execute as @a[tag=!ads] unless score @s riflepulse matches 1 run function guns:graviton/noadsrecoil
execute as @a[tag=ads] unless score @s riflepulse matches 1 run function guns:graviton/adsrecoil
##timer
scoreboard players add @a[tag=recoil] recoiltimer 1
execute as @a[tag=recoil,scores={recoiltimer=1..3},tag=ads] unless score @s riflepulse matches 1 at @s run tp @s ~ ~ ~ ~ ~-1
execute as @a[tag=recoil,scores={recoiltimer=1..3},tag=!ads] unless score @s riflepulse matches 1 at @s run tp @s ~ ~ ~ ~ ~-2
execute as @a[tag=recoil,scores={recoiltimer=4..10},tag=ads] unless score @s riflepulse matches 1 at @s run tp @s ~ ~ ~ ~ ~0.2
execute as @a[tag=recoil,scores={recoiltimer=4..10},tag=!ads] unless score @s riflepulse matches 1 at @s run tp @s ~ ~ ~ ~ ~0.4
execute as @a[scores={recoiltimer=12..}] run function guns:general/setmag
execute as @a[scores={recoiltimer=12..}] run tag @a[tag=recoil] remove recoil
execute as @a[scores={recoiltimer=12..}] run scoreboard players reset @s recoiltimer
execute as @a[scores={recoiltimer=..11}] run schedule function guns:graviton/decoil 1t append
execute as @a[scores={recoiltimer=4,riflepulse=1}] run function guns:graviton/schedulepulse
