##no cosmotargets?  make more
execute at @s as @e[distance=..10,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 0.. run scoreboard players set @s cosmotarget 0
execute as @s[scores={Constant=1}] at @s unless entity @e[scores={cosmotarget=1}] as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune,scores={cosmotarget=0},sort=nearest] run scoreboard players set @s cosmotarget 1
execute as @s[scores={Constant=2}] at @s unless entity @e[scores={cosmotarget=2}] as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune,scores={cosmotarget=0},sort=nearest] run scoreboard players set @s cosmotarget 2
execute as @s[scores={Constant=3}] at @s unless entity @e[scores={cosmotarget=3}] as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune,scores={cosmotarget=0},sort=nearest] run scoreboard players set @s cosmotarget 3
execute as @s[scores={Constant=4}] at @s unless entity @e[scores={cosmotarget=4}] as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune,scores={cosmotarget=0},sort=nearest] run scoreboard players set @s cosmotarget 4
execute as @s[scores={Constant=5}] at @s unless entity @e[scores={cosmotarget=5}] as @e[limit=1,distance=..20,type=#guns:livingthings,tag=!cosmoimmune,scores={cosmotarget=0},sort=nearest] run scoreboard players set @s cosmotarget 5

##track
execute as @s[scores={Constant=1}] at @s facing entity @e[scores={cosmotarget=1},limit=1,sort=nearest] feet run tp @s ^ ^ ^0.2
execute as @s[scores={Constant=2}] at @s facing entity @e[scores={cosmotarget=2},limit=1,sort=nearest] feet run tp @s ^ ^ ^0.2
execute as @s[scores={Constant=3}] at @s facing entity @e[scores={cosmotarget=3},limit=1,sort=nearest] feet run tp @s ^ ^ ^0.2
execute as @s[scores={Constant=4}] at @s facing entity @e[scores={cosmotarget=4},limit=1,sort=nearest] feet run tp @s ^ ^ ^0.2
execute as @s[scores={Constant=5}] at @s facing entity @e[scores={cosmotarget=5},limit=1,sort=nearest] feet run tp @s ^ ^ ^0.2

##particel
execute at @s run particle portal ~ ~ ~ .1 .1 .1 0 5

##found entity
execute at @s[scores={Constant=1}] as @e[scores={cosmotarget=1},distance=..0.3] run function guns:graviton/cosmology/hit
execute at @s[scores={Constant=2}] as @e[scores={cosmotarget=2},distance=..0.3] run function guns:graviton/cosmology/hit
execute at @s[scores={Constant=3}] as @e[scores={cosmotarget=3},distance=..0.3] run function guns:graviton/cosmology/hit
execute at @s[scores={Constant=4}] as @e[scores={cosmotarget=4},distance=..0.3] run function guns:graviton/cosmology/hit
execute at @s[scores={Constant=5}] as @e[scores={cosmotarget=5},distance=..0.3] run function guns:graviton/cosmology/hit

##didnt find entity
execute at @s[scores={Constant=1},nbt={Age:29}] run scoreboard players reset @e cosmotarget

##no cosmotargets?  make more
execute positioned ~ ~ ~ as @e[distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 0.. run scoreboard players set @s cosmotarget 0
execute as @s[scores={Constant=1}] positioned ~ ~ ~ unless entity @e[scores={cosmotarget=1}] as @e[limit=5,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 1.. run scoreboard players set @s cosmotarget 1
execute as @s[scores={Constant=1}] positioned ~ ~ ~ unless entity @e[scores={cosmotarget=2}] as @e[limit=5,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 1.. run scoreboard players set @s cosmotarget 2
execute as @s[scores={Constant=1}] positioned ~ ~ ~ unless entity @e[scores={cosmotarget=3}] as @e[limit=5,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 1.. run scoreboard players set @s cosmotarget 3
execute as @s[scores={Constant=1}] positioned ~ ~ ~ unless entity @e[scores={cosmotarget=4}] as @e[limit=5,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 1.. run scoreboard players set @s cosmotarget 4
execute as @s[scores={Constant=1}] positioned ~ ~ ~ unless entity @e[scores={cosmotarget=5}] as @e[limit=5,distance=..20,type=#guns:livingthings,tag=!cosmoimmune] unless score @s cosmotarget matches 1.. run scoreboard players set @s cosmotarget 5
