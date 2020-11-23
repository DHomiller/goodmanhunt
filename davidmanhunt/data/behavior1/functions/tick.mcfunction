##start game check
execute as @a[scores={runner_click=1}] at @s run function behavior1:start_game

##Give dead hunters a compass
execute as @e[scores={respawn=1,is_runner=0}] run give @s minecraft:compass

##Nether stuff
execute as @a[scores={is_in_nether=0},nbt={Dimension:"minecraft:the_nether"}] at @s run function behavior1:nether_box
execute as @a[scores={is_in_nether=0},nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s is_in_nether 1
execute as @a[scores={is_in_nether=1},nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s is_in_nether 0

##use compass
execute as @a[scores={is_runner=0},nbt=!{Dimension:"minecraft:the_end"}] if score @s is_in_nether = @e[limit=1,sort=nearest,scores={is_runner=1}] is_in_nether at @s run function behavior1:use_compass