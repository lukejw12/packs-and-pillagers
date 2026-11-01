execute if entity @s[tag=pnp.held] run return fail
execute if entity @s[tag=pnp.cg_carry] run return fail
execute if entity @s[tag=pnp.infight] run return fail
execute if entity @s[tag=pnp.c.copper_golem] run return fail
execute if score @s pnp.pop matches 1.. run return fail
execute if score @s pnp.hb matches 1.. run return fail
execute on vehicle run return fail
return 1
