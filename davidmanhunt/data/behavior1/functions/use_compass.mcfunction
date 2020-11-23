execute as @e[scores={is_runner=1}] run data modify block 0 0 0 Items[0].tag.LodestonePos.X set from entity @s Pos[0]
data modify block 0 0 0 Items[0].tag.LodestonePos.Y set value 0
execute as @e[scores={is_runner=1}] run data modify block 0 0 0 Items[0].tag.LodestonePos.Z set from entity @s Pos[2]
execute as @s[nbt={SelectedItem:{id:"minecraft:compass"}}] run loot replace entity @s weapon.mainhand 1 mine 0 0 0 minecraft:air{drop_contents: 1b}
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] run loot replace entity @s weapon.offhand 1 mine 0 0 0 minecraft:air{drop_contents: 1b}
#tellraw @s [{"text":"Tracking "},{"selector":"@p[scores={is_runner=1}]"}]