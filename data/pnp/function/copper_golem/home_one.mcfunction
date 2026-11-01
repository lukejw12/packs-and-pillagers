execute unless block ~ ~-0.5 ~ #pnp:table run return 0
execute if score @s pnp.stack = #gex pnp.tmp run return 0
execute unless function pnp:copper_golem/same_kind run return 0
execute if score #gsz pnp.tmp matches 20.. run return 0
execute if score #gsz pnp.tmp <= #hn pnp.tmp run return 0
scoreboard players operation #hn pnp.tmp = #gsz pnp.tmp
scoreboard players operation #hs pnp.tmp = @s pnp.stack
