scoreboard objectives add bell_cooldown dummy "Bell Cooldown"
scoreboard players set dec bell_cooldown 1

schedule function bell_spawns:bell/cooldown 1s replace

scoreboard objectives add player_spawn_x dummy
scoreboard objectives add player_spawn_y dummy
scoreboard objectives add player_spawn_z dummy

scoreboard objectives add player_bell_x dummy
scoreboard objectives add player_bell_y dummy
scoreboard objectives add player_bell_z dummy

scoreboard objectives add bell_player_health health
scoreboard objectives add bell_raycast_steps dummy

kill @e[tag=bell_spawn_marker]
summon marker ~ ~ ~ {Tags:["bell_spawn_marker"]}

