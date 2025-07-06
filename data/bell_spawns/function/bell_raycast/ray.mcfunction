execute unless block ~ ~ ~ #minecraft:air \
   if block ~ ~ ~ minecraft:bell \
   run function bell_spawns:bell_raycast/success

execute unless block ~ ~ ~ #minecraft:air \
   if block ~ ~ ~ minecraft:bell \
   run return 0

scoreboard players remove @s bell_raycast_steps 1

execute unless score @s bell_raycast_steps matches 1.. \
   run function bell_spawns:bell_raycast/error

execute unless score @s bell_raycast_steps matches 1.. \
   run return fail

execute if score @s bell_raycast_steps matches 1.. \
   positioned ^ ^ ^0.1 \
   run function bell_spawns:bell_raycast/ray

