scoreboard players reset @s player_bell_x
scoreboard players reset @s player_bell_y
scoreboard players reset @s player_bell_z

scoreboard players reset @s player_spawn_x
scoreboard players reset @s player_spawn_y
scoreboard players reset @s player_spawn_z

playsound minecraft:block.beacon.deactivate block @s ~ ~ ~ 1.0
tellraw @s "Your bell has been broken!"

execute at @e[tag=bell_spawn_marker,limit=1] run spawnpoint @s 

