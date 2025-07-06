tellraw @s "You cannot use beds and respawn anchors to set your spawn. Use a bell instead."

summon minecraft:marker ~ ~ ~ {Tags:["bell_spawns_player_position"]}

execute store result entity @e[tag=bell_spawns_player_position,limit=1] Pos[0] double 1.0 \
   run scoreboard players get @s player_spawn_x
execute store result entity @e[tag=bell_spawns_player_position,limit=1] Pos[1] double 1.0 \
   run scoreboard players get @s player_spawn_y
execute store result entity @e[tag=bell_spawns_player_position,limit=1] Pos[2] double 1.0 \
   run scoreboard players get @s player_spawn_z

execute at @e[tag=bell_spawn_marker,limit=1] \
   if score @s player_spawn_dimension matches 0 in minecraft:overworld \
   unless score @s player_spawn_x matches -999999999.. \
   unless score @s player_spawn_y matches -999999999.. \
   unless score @s player_spawn_z matches -999999999.. \
   run spawnpoint @s ~ ~ ~

execute at @e[tag=bell_spawn_marker,limit=1] \
   if score @s player_spawn_dimension matches 1 in minecraft:the_nether \
   unless score @s player_spawn_x matches -999999999.. \
   unless score @s player_spawn_y matches -999999999.. \
   unless score @s player_spawn_z matches -999999999.. \
   run spawnpoint @s ~ ~ ~

execute at @e[tag=bell_spawn_marker,limit=1] \
   if score @s player_spawn_dimension matches 2 in minecraft:the_end \
   unless score @s player_spawn_x matches -999999999.. \
   unless score @s player_spawn_y matches -999999999.. \
   unless score @s player_spawn_z matches -999999999.. \
   run spawnpoint @s ~ ~ ~

execute at @e[tag=bell_spawn_marker,limit=1] if score @s player_spawn_x matches -999999999.. \
   if score @s player_spawn_y matches -999999999.. \
   if score @s player_spawn_z matches -999999999.. \
   at @e[tag=bell_spawns_player_position,limit=1] \
   run spawnpoint @s ~ ~ ~

kill @e[tag=bell_spawns_player_position]

advancement revoke @s only bell_spawns:bed_used
advancement revoke @s only bell_spawns:anchor_used

