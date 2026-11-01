execute unless entity @s[tag=pnp.wellfed] unless entity @s[tag=pnp.hungry] run return 0
tag @s remove pnp.wellfed
tag @s remove pnp.hungry
function pnp:villager/recalculate
