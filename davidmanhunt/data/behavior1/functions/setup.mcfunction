scoreboard objectives remove respawn
scoreboard objectives remove is_runner
scoreboard objectives remove is_in_nether
scoreboard objectives remove runner_click

scoreboard objectives add respawn minecraft.custom:minecraft.time_since_death
scoreboard objectives add is_runner dummy
scoreboard objectives add is_in_nether dummy
execute as @a run scoreboard players set @s is_in_nether 0
scoreboard objectives add runner_click trigger
execute as @a run scoreboard players enable @s runner_click

forceload add 0 0
setblock 0 1 0 minecraft:bedrock
setblock 0 0 0 minecraft:bedrock
setblock 0 0 0 minecraft:yellow_shulker_box{Items:[{Slot:0,id:"minecraft:compass",Count:1,tag:{LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:0,Y:1,Z:10}}}]}

tellraw @a [{"text":"Runner, click "},{"text":"here","color":"gold","clickEvent":{"action":"run_command","value":"/trigger runner_click set 1"},"hoverEvent":{"action":"show_text","contents":"click to begin"}},{"text":" here to start","color":"white"}]