execute if dimension pnp:board run return fail
scoreboard players set #imp pnp.tmp 0
scoreboard players set #ray pnp.tmp 0
execute anchored eyes positioned ^ ^ ^ run function pnp:vanilla/import_raycast
return run scoreboard players get #imp pnp.tmp
