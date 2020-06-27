##no cosmotargets?  make more
execute at @s as @e[distance=..10,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 0.. run scoreboard players set @s cosmotarget 0
execute as @s[scores={Constant=1}] at @s unless entity @e[scores={cosmotarget=1}] as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune,scores={cosmotarget=0},sort=nearest] run scoreboard players set @s cosmotarget 1
execute as @s[scores={Constant=2}] at @s unless entity @e[scores={cosmotarget=2}] as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune,scores={cosmotarget=0},sort=nearest] run scoreboard players set @s cosmotarget 2
execute as @s[scores={Constant=3}] at @s unless entity @e[scores={cosmotarget=3}] as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune,scores={cosmotarget=0},sort=nearest] run scoreboard players set @s cosmotarget 3
execute as @s[scores={Constant=4}] at @s unless entity @e[scores={cosmotarget=4}] as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune,scores={cosmotarget=0},sort=nearest] run scoreboard players set @s cosmotarget 4
execute as @s[scores={Constant=5}] at @s unless entity @e[scores={cosmotarget=5}] as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune,scores={cosmotarget=0},sort=nearest] run scoreboard players set @s cosmotarget 5

##track
execute as @s[scores={Constant=1}] at @s facing entity @e[scores={cosmotarget=1},limit=1,sort=nearest] eyes if block ^ ^ ^0.1 #guns:passthrough run tp @s ^ ^ ^0.2
execute as @s[scores={Constant=2}] at @s facing entity @e[scores={cosmotarget=2},limit=1,sort=nearest] eyes if block ^ ^ ^0.1 #guns:passthrough run tp @s ^ ^ ^0.2
execute as @s[scores={Constant=3}] at @s facing entity @e[scores={cosmotarget=3},limit=1,sort=nearest] eyes if block ^ ^ ^0.1 #guns:passthrough run tp @s ^ ^ ^0.2
execute as @s[scores={Constant=4}] at @s facing entity @e[scores={cosmotarget=4},limit=1,sort=nearest] eyes if block ^ ^ ^0.1 #guns:passthrough run tp @s ^ ^ ^0.2
execute as @s[scores={Constant=5}] at @s facing entity @e[scores={cosmotarget=5},limit=1,sort=nearest] eyes if block ^ ^ ^0.1 #guns:passthrough run tp @s ^ ^ ^0.2

##particel
execute at @s run particle dust 0.588 0.122 1.000 .5 ~ ~ ~ 0.05 0.05 0.05 3 15

##found entity
execute at @s[scores={Constant=1}] positioned ~ ~-1 ~ as @e[scores={cosmotarget=1},distance=..1] run function guns:graviton/cosmology/hit
execute at @s[scores={Constant=2}] positioned ~ ~-1 ~ as @e[scores={cosmotarget=2},distance=..1] run function guns:graviton/cosmology/hit
execute at @s[scores={Constant=3}] positioned ~ ~-1 ~ as @e[scores={cosmotarget=3},distance=..1] run function guns:graviton/cosmology/hit
execute at @s[scores={Constant=4}] positioned ~ ~-1 ~ as @e[scores={cosmotarget=4},distance=..1] run function guns:graviton/cosmology/hit
execute at @s[scores={Constant=5}] positioned ~ ~-1 ~ as @e[scores={cosmotarget=5},distance=..1] run function guns:graviton/cosmology/hit

##didnt find entity
execute at @s[scores={Constant=1},nbt={Age:29}] run scoreboard players reset @e cosmotarget
execute at @s[scores={Constant=1..5},nbt={Age:29}] run particle minecraft:portal ~ ~ ~ .1 .1 .1 .2 15 normal
execute at @s[scores={Constant=1},nbt={Age:29}] run playsound cosmorb master @a[distance=..20] ~ ~ ~ .3
execute at @s[scores={Constant=2},nbt={Age:31}] run playsound cosmorb master @a[distance=..20] ~ ~ ~ .3
execute at @s[scores={Constant=3},nbt={Age:33}] run playsound cosmorb master @a[distance=..20] ~ ~ ~ .3
execute at @s[scores={Constant=4},nbt={Age:35}] run playsound cosmorb master @a[distance=..20] ~ ~ ~ .3
execute at @s[scores={Constant=5},nbt={Age:37}] run playsound cosmorb master @a[distance=..20] ~ ~ ~ .3

##no cosmotargets?  make more
execute positioned ~ ~ ~ as @e[distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 0.. run scoreboard players set @s cosmotarget 0
execute as @s[scores={Constant=1}] positioned ~ ~ ~ unless entity @e[scores={cosmotarget=1}] as @e[limit=5,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 1.. run scoreboard players set @s cosmotarget 1
execute as @s[scores={Constant=1}] positioned ~ ~ ~ unless entity @e[scores={cosmotarget=2}] as @e[limit=5,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 1.. run scoreboard players set @s cosmotarget 2
execute as @s[scores={Constant=1}] positioned ~ ~ ~ unless entity @e[scores={cosmotarget=3}] as @e[limit=5,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 1.. run scoreboard players set @s cosmotarget 3
execute as @s[scores={Constant=1}] positioned ~ ~ ~ unless entity @e[scores={cosmotarget=4}] as @e[limit=5,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 1.. run scoreboard players set @s cosmotarget 4
execute as @s[scores={Constant=1}] positioned ~ ~ ~ unless entity @e[scores={cosmotarget=5}] as @e[limit=5,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 1.. run scoreboard players set @s cosmotarget 5
