execute at @s run \
   spawnpoint @s ~ ~ ~

effect give @s minecraft:instant_health 1 100 true
effect give @s minecraft:saturation 1 100 true

execute store result score @s player_spawn_x run data get entity @s Pos[0]
execute store result score @s player_spawn_y run data get entity @s Pos[1]
execute store result score @s player_spawn_z run data get entity @s Pos[2]

scoreboard players set @s bell_cooldown 60
function bell_spawns:bell_raycast/start

playsound minecraft:block.beacon.activate block @s ~ ~ ~ 1.0

tellraw @s "Spawnpoint Set!"

