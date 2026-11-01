execute if entity @s[tag=pnp.held] run return fail
execute if entity @s[tag=pnp.cg_carry] run return fail
execute if entity @s[tag=pnp.infight] run return fail
execute if entity @s[tag=pnp.k.enemy] run return fail
execute if entity @s[tag=pnp.k.shop] run return fail
execute if entity @s[tag=pnp.k.sell] run return fail
execute on vehicle run return fail
execute unless block ~ ~-0.5 ~ #pnp:felt run return fail
return 1
