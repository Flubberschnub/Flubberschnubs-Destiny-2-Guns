##shoot
scoreboard players reset Crit shootgun
stopsound @s master reclusereload
stopsound @s master recluseecho
execute at @s run playsound recluseecho master @a[distance=..30] ~ ~ ~ 5
execute at @s[tag=!reclusesound] run playsound reclusehold master @a[distance=..30] ~ ~ ~ 5
tag @s[tag=reloading] remove reloading
tag @s add shooter
scoreboard players remove @s magazine 1
function guns:general/setmag
tag @s add rpm
scoreboard players reset @s recoiltimer
execute at @s anchored eyes run function guns:recluse/raycast
tag @s add recoil
function guns:recluse/decoil
schedule function guns:recluse/resetrpm 1t append
execute if predicate guns:fiftyfifty run schedule function guns:recluse/resetrpm 2t replace
tag @s[tag=!shootingrecluse] add reclusesound
tag @s add shootingrecluse
#scoreboard players reset @s shootgun
#schedule function guns:sunshot/decoil 2t
#schedule function guns:sunshot/decoil 3t
#schedule function guns:sunshot/decoil 4t
#schedule function guns:sunshot/decoil 5t
