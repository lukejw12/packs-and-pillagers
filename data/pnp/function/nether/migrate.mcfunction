$execute unless data storage pnp:nether built.p$(p) run return 0
$data remove storage pnp:nether built.p$(p)
$scoreboard players set #np pnp.tmp $(p)
scoreboard players operation #ox pnp.tmp = #np pnp.tmp
scoreboard players operation #ox pnp.tmp *= #1024 pnp.tmp
scoreboard players add #ox pnp.tmp 512
execute store result storage pnp:board om.x int 1 run scoreboard players get #ox pnp.tmp
scoreboard players add #ox pnp.tmp 16
execute store result storage pnp:board om.cx int 1 run scoreboard players get #ox pnp.tmp
scoreboard players add #ox pnp.tmp 15
execute store result storage pnp:board om.x2 int 1 run scoreboard players get #ox pnp.tmp
function pnp:nether/migrate_at with storage pnp:board om
