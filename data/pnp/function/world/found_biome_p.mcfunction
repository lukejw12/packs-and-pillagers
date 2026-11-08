$execute if data storage pnp:world biome.p$(p).$(b) run return 0
$data modify storage pnp:world biome.p$(p).$(b) set value 1b
$scoreboard players set #wfx pnp.tmp $(p)
scoreboard players operation #wfx pnp.tmp *= #1024 pnp.tmp
scoreboard players add #wfx pnp.tmp 16
execute store result storage pnp:board wfb.x int 1 run scoreboard players get #wfx pnp.tmp
function pnp:world/found_biome_pop with storage pnp:board wfb
