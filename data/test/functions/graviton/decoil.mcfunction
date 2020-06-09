##decoil
execute as @a[tag=!ads] run function test:graviton/noadsrecoil
execute as @a[tag=ads] run function test:graviton/adsrecoil
##timer
execute as @a[tag=recoil,scores={recoiltimer=3..10}] unless score @s riflepulse matches 1 at @s run tp @s ~ ~ ~ ~ ~0.15
#execute as @a[tag=recoil,scores={recoiltimer=1..2},tag=ads] unless score @s riflepulse matches 1 at @s run tp @s ~ ~ ~ ~ ~-1
#execute as @a[tag=recoil,scores={recoiltimer=1..2},tag=!ads] unless score @s riflepulse matches 1 at @s run tp @s ~ ~ ~ ~ ~-1.5
scoreboard players add @a[tag=recoil] recoiltimer 1
execute as @a[scores={recoiltimer=12..}] run function test:general/setmag
execute as @a[scores={recoiltimer=12..}] run tag @a[tag=recoil] remove recoil
execute as @a[scores={recoiltimer=12..}] run scoreboard players reset @s recoiltimer
execute as @a[scores={recoiltimer=..11}] run schedule function test:graviton/decoil 1t append
execute as @a[scores={recoiltimer=5,riflepulse=1}] run function test:graviton/schedulepulse
