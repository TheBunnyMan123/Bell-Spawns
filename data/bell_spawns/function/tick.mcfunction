summon marker ~ ~ ~ {Tags:["bell_spawn_marker"]}
execute as @a[scores={player_bell_x=-999999999..}] run function bell_spawns:bell/check
kill @e[tag=bell_spawn_marker,sort=nearest,limit=1]

