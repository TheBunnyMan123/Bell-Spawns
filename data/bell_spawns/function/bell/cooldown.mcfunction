scoreboard players operation @a bell_cooldown -= dec bell_cooldown
schedule function bell_spawns:bell/cooldown 1s replace

advancement revoke @e[scores={bell_cooldown=..0},type=minecraft:player] only bell_spawns:bell_used

