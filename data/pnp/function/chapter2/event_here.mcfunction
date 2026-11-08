summon marker ~ ~ ~ {Tags:["pnp.c2m"]}
$execute as @e[type=marker,tag=pnp.c2m,limit=1,sort=nearest] run function pnp:chapter2/event_at {qk:"$(qk)"}
kill @e[type=marker,tag=pnp.c2m]
