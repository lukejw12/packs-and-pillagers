$data modify storage pnp:board rel set value {prof:"$(prof)",offers:[]}
$scoreboard players set #rl pnp.tmp $(lvl)
execute if score #rl pnp.tmp matches ..0 run scoreboard players set #rl pnp.tmp 1
execute if score #rl pnp.tmp matches 6.. run scoreboard players set #rl pnp.tmp 5
execute store result storage pnp:board rel.lvl int 1 run scoreboard players get #rl pnp.tmp
execute if data storage pnp:board rel{prof:"minecraft:none"} run return run function pnp:villager/release/spawn_plain
execute if data storage pnp:board rel{prof:"minecraft:nitwit"} run return run function pnp:villager/release/spawn_plain
scoreboard players set #rk pnp.tmp 1
function pnp:villager/release/generate_loop
function pnp:villager/release/spawn_villager with storage pnp:board rel
