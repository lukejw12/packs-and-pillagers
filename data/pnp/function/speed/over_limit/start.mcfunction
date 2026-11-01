execute unless function pnp:speed/over_limit/check_all run return fail
scoreboard players set #pover pnp.ids 1
scoreboard players set #ovt pnp.ids 0
function pnp:speed/check
return 1
