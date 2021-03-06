#execute as @e run function superhero:fatigue
#execute as @e run function superhero:standstill
#execute as @e[tag=test] run function superhero:test

##magazine item to score
#execute as @e[tag=!reloading,tag=!recoil,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] unless score @s adstimer matches 1.. store result score @s magazine run data get entity @s SelectedItem.tag.magazine 1
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] store result score @s magazine run data get entity @s SelectedItem.tag.magazine

## arrow no have yucky bubbles
execute as @e[type=arrow,tag=timefreezed] run data merge entity @s {Color:-1}

##ads
##sunshot
execute as @a[scores={ads=1..},tag=!reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run function guns:sunshot/adson
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] unless score @s ads matches 1.. run function guns:sunshot/adsoff
##graviton
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,graviton:1,ads:1}}}] unless score @s ads matches 1.. run function guns:graviton/adsoff
execute as @a[scores={ads=1..},tag=!reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,graviton:1,ads:0}}}] run function guns:graviton/adson
##recluse
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:1}}}] unless score @s ads matches 1.. run function guns:recluse/adsoff
execute as @a[scores={ads=1..},tag=!reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1,ads:0}}}] run function guns:recluse/adson
#execute as @a[tag=ads,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] unless score @s scope matches 1.. run function guns:sunshot/adsoff
#execute as @a[scores={scope=1..},tag=!ads,tag=!reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run function guns:sunshot/adson
scoreboard players reset @a ads
scoreboard players reset @a scope

##sprinting
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gun:1,CustomModelData:56,sunshot:1}}},predicate=!aestd1:flags/is_sprinting] run function guns:sunshot/resetads
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gun:1,CustomModelData:99,graviton:1}}},predicate=!aestd1:flags/is_sprinting] run function guns:graviton/resetads
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gun:1,CustomModelData:174,recluse:1}}},predicate=!aestd1:flags/is_sprinting] run function guns:recluse/resetads
##sunshot
execute as @a[predicate=aestd1:flags/is_sprinting,predicate=!aestd1:flags/is_sneaking,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gun:1,sunshot:1}}}] run function guns:sunshot/sprinting
execute as @a[predicate=aestd1:flags/is_sprinting,predicate=!aestd1:flags/is_sneaking,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gun:1,sunshot:2}}}] run function guns:sunshot/sprinting
##gravlance
execute as @a[predicate=aestd1:flags/is_sprinting,predicate=!aestd1:flags/is_sneaking,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gun:1,graviton:1}}}] run function guns:graviton/sprinting
##recluse
execute as @a[predicate=aestd1:flags/is_sprinting,predicate=!aestd1:flags/is_sneaking,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gun:1,recluse:1}}}] run function guns:recluse/sprinting

##perks
function guns:general/perks/tick

##animations
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] run effect give @s mining_fatigue 1 128 true
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] run stopsound @a[distance=..10] master item.armor.equip_generic
#execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] run effect give @s haste 1 255 true

##left click detect
#kill @e[tag=leftclick]
#execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] at @s positioned ^ ^ ^1 run tp @e[tag=leftclick] ^ ^0.2 ^

##shooting
##sunshot
execute as @a[scores={shootgun=1..,magazine=1..},predicate=!aestd1:flags/is_sprinting,tag=!rpm,tag=!reloading,tag=!holding,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] at @s anchored eyes run function guns:sunshot/shoot
execute as @a[scores={shootgun=1..,magazine=1..},predicate=!aestd1:flags/is_sprinting,tag=!rpm,tag=!holding,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] at @s anchored eyes run function guns:sunshot/shoot
execute as @a[scores={shootgun=1..},predicate=!aestd1:flags/is_sprinting,tag=!rpm,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] unless entity @s[scores={magazine=1..}] at @s anchored eyes run function guns:sunshot/reload
execute as @a[scores={shootgun=1..},predicate=!aestd1:flags/is_sprinting,tag=!rpm,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] unless entity @s[scores={magazine=1..}] at @s anchored eyes run function guns:sunshot/reload
##graviton
execute as @a[scores={shootgun=1..,magazine=1..},predicate=!aestd1:flags/is_sprinting,tag=!rpm,tag=!holding,tag=!reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,graviton:1}}}] at @s anchored eyes run function guns:graviton/shoot
execute as @a[scores={shootgun=1..},predicate=!aestd1:flags/is_sprinting,tag=!rpm,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,graviton:1}}}] unless entity @s[scores={magazine=1..}] at @s anchored eyes run function guns:graviton/reload
##recluse
#execute at @a[scores={shootgun=1..,magazine=1..},tag=!reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1}}}] run playsound reclusehold master @a[distance=..30] ~ ~ ~ 5
tag @a[tag=shootingrecluse,tag=!rpm] remove shootingrecluse
execute as @a[scores={magazine=1..},predicate=!aestd1:flags/is_sprinting,tag=!rpm,tag=holding,tag=!reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1}}}] at @s anchored eyes run function guns:recluse/shoot
tag @a[tag=!shootingrecluse] remove reclusesound
execute at @a[tag=!shootingrecluse] run stopsound @a[distance=..30,tag=!shootingrecluse] master reclusehold
execute as @a[scores={shootgun=1..},predicate=!aestd1:flags/is_sprinting,tag=!holding,tag=!rpm,tag=!reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1}}}] unless entity @s[scores={magazine=1..}] at @s anchored eyes run function guns:recluse/reload

##recoil constantly runs on timer
execute as @a[scores={recoiltimer=1..}] run function guns:general/recoiloop
#scoreboard players reset @a shootgun

##reloading
##sunshot
execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,Count:1b,tag:{gun:1,sunshot:1}}]}] unless entity @s[nbt={SelectedItem:{}}] run function guns:sunshot/reload
execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,Count:1b,tag:{gun:1,sunshot:2}}]}] unless entity @s[nbt={SelectedItem:{}}] run function guns:sunshot/reload
##graviton
execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,Count:1b,tag:{gun:1,graviton:1}}]}] unless entity @s[nbt={SelectedItem:{}}] run function guns:graviton/reload
##recluse
execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,Count:1b,tag:{gun:1,recluse:1}}]}] unless entity @s[nbt={SelectedItem:{}}] run function guns:recluse/reload

##reloadtimer reset while sprinting
scoreboard players reset @a[predicate=aestd1:flags/is_sprinting] reloadtimer

##reload constantly runs on timer
execute as @a[scores={reloadtimer=1..}] run function guns:general/reloadloop

##rounds left
##reloading
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}},tag=reloading] run title @s actionbar {"text":"[--/--]","color":"dark_gray","italic":false}
##graviton
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,graviton:1}}},tag=!reloading,scores={magazine=8..}] run title @s actionbar [{"text":"[","color":"dark_gray","italic":false},{"score":{"name":"@s","objective":"magazine"},"color":"dark_purple","italic":false},{"text":"/30]","color":"dark_gray","italic":false}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,graviton:1}}},tag=!reloading,scores={magazine=..7}] run title @s actionbar [{"text":"[","color":"dark_gray","italic":false},{"score":{"name":"@s","objective":"magazine"},"color":"dark_red","italic":false},{"text":"/30]","color":"dark_gray","italic":false}]
##recluse
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1}}},tag=!reloading,scores={magazine=10..}] run title @s actionbar [{"text":"[","color":"dark_gray","italic":false},{"score":{"name":"@s","objective":"magazine"},"color":"white","italic":false},{"text":"/36]","color":"dark_gray","italic":false}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1}}},tag=!reloading,scores={magazine=..9}] run title @s actionbar [{"text":"[","color":"dark_gray","italic":false},{"score":{"name":"@s","objective":"magazine"},"color":"dark_red","italic":false},{"text":"/36]","color":"dark_gray","italic":false}]
##sunshot
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}},tag=!reloading,scores={magazine=4..}] run title @s actionbar [{"text":"[","color":"dark_gray","italic":false},{"score":{"name":"@s","objective":"magazine"},"color":"gold","italic":false},{"text":"/12]","color":"dark_gray","italic":false}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}},tag=!reloading,scores={magazine=4..}] run title @s actionbar [{"text":"[","color":"dark_gray","italic":false},{"score":{"name":"@s","objective":"magazine"},"color":"gold","italic":false},{"text":"/12]","color":"dark_gray","italic":false}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}},tag=!reloading,scores={magazine=..3}] run title @s actionbar [{"text":"[","color":"dark_gray","italic":false},{"score":{"name":"@s","objective":"magazine"},"color":"dark_red","italic":false},{"text":"/12]","color":"dark_gray","italic":false}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}},tag=!reloading,scores={magazine=..3}] run title @s actionbar [{"text":"[","color":"dark_gray","italic":false},{"score":{"name":"@s","objective":"magazine"},"color":"dark_red","italic":false},{"text":"/12]","color":"dark_gray","italic":false}]


##magazine score to item
#execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] run function guns:general/setmag

##temporary
scoreboard players remove @a[scores={holdingtimer=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] holdingtimer 1
scoreboard players set @a[scores={shootgun=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] holdingtimer 5
#execute as @a[scores={holdingtimer=1..}] run say hi
execute as @a[scores={holdingtimer=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] run tag @s remove holding
execute as @a[scores={holdingtimer=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] run tag @s add holding
scoreboard players reset @a[scores={shootgun=1..}] shootgun

##crucible
effect give @a[tag=crucible] speed 1 1 true
effect give @a[tag=crucible] jump_boost 1 1 true
