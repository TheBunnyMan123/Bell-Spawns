summon marker ~ ~ ~ {Tags:["bell_marker"]}

execute store result score @s player_bell_x run data get entity @e[tag=bell_marker,sort=nearest,limit=1] Pos[0]
execute store result score @s player_bell_y run data get entity @e[tag=bell_marker,sort=nearest,limit=1] Pos[1]
execute store result score @s player_bell_z run data get entity @e[tag=bell_marker,sort=nearest,limit=1] Pos[2]

kill @e[tag=bell_marker,sort=nearest,limit=1]

