kill @e[tag=bell_check_marker]

execute if score @s player_bell_dimension matches 0 in minecraft:overworld run summon minecraft:marker 0 0 0 {Tags:["bell_check_marker"],NoGravity:1b}
execute if score @s player_bell_dimension matches 1 in minecraft:the_nether run summon minecraft:marker 0 0 0 {Tags:["bell_check_marker"],NoGravity:1b}
execute if score @s player_bell_dimension matches 2 in minecraft:the_end run summon minecraft:marker 0 0 0 {Tags:["bell_check_marker"],NoGravity:1b}

execute store result entity @e[tag=bell_check_marker,sort=nearest,limit=1] Pos[0] double 1.0 \
   run scoreboard players get @s player_bell_x

execute store result entity @e[tag=bell_check_marker,sort=nearest,limit=1] Pos[1] double 1.0 \
   run scoreboard players get @s player_bell_y

execute store result entity @e[tag=bell_check_marker,sort=nearest,limit=1] Pos[2] double 1.0 \
   run scoreboard players get @s player_bell_z

execute as @e[tag=bell_check_marker,sort=nearest,limit=1] at @s \
   run tp @s ~0.5 ~0.5 ~0.5

execute at @e[tag=bell_check_marker,sort=nearest,limit=1] run data get block ~ ~ ~

execute at @e[tag=bell_check_marker,sort=nearest,limit=1] \
   if entity @e[tag=bell_check_marker,sort=nearest,limit=1] \
   if loaded ~ ~ ~ \
   unless block ~ ~ ~ minecraft:bell \
   run function bell_spawns:bell/broken

kill @e[tag=bell_check_marker]

