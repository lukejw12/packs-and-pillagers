execute if entity @a[dx=0,dy=0,dz=0] run return run scoreboard players set #whit pnp.tmp 2
scoreboard players set #whit pnp.tmp 1
summon marker ~0.5 ~0.5 ~0.5 {Tags:["pnp.wsm","pnp.wsm_new"]}
summon marker ~ ~ ~ {Tags:["pnp.wsb"]}
