execute if score @s pnp.stack = #gh pnp.tmp run return 0
execute unless function pnp:copper_golem/top_card run return 0
execute if score #gm pnp.tmp matches 1 if score #gsz pnp.tmp matches 20.. run return 0
tag @s add pnp.cg_sf
