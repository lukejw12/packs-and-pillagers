$bossbar add pnp:hud$(p) ""
$bossbar set pnp:hud$(p) color pink
$bossbar set pnp:hud$(p) style progress
$bossbar set pnp:hud$(p) max 1
$bossbar set pnp:hud$(p) value 0
$bossbar set pnp:hud$(p) players @s
$bossbar set pnp:hud$(p) visible true
tag @s add pnp.hud_on
