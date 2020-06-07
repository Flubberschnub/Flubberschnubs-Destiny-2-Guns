##shoot
scoreboard players add @s riflepulse 1
execute if score @s riflepulse matches 2.. run scoreboard players reset @s riflepulse
scoreboard players reset Crit shootgun
stopsound @s master gravitonreload
stopsound @s master lancecho
tag @s[tag=reloading] remove reloading
tag @s add shooter
scoreboard players remove @s magazine 1
execute at @s unless score @s riflepulse matches 1 run playsound gravitonlance master @a[distance=..30] ~ ~ ~ 5
execute at @s unless score @s riflepulse matches 1 run playsound lancecho master @a[distance=..30] ~ ~ ~ 5
tag @s add rpm
scoreboard players reset @s recoiltimer
execute at @s anchored eyes run function test:graviton/raycast
execute at @s[tag=ads] unless score @s riflepulse matches 1 run tp @s ~ ~ ~ ~ ~-3
execute at @s[tag=!ads] unless score @s riflepulse matches 1 run tp @s ~ ~ ~ ~ ~-5
tag @s add recoil
function test:graviton/decoil
scoreboard players reset @s shootgun
schedule function test:graviton/resetrpm 9t
#schedule function test:sunshot/decoil 2t
#schedule function test:sunshot/decoil 3t
#schedule function test:sunshot/decoil 4t
#schedule function test:sunshot/decoil 5t
