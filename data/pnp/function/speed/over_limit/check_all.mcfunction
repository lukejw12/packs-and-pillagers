scoreboard players set #anyover pnp.tmp 0
execute as @a[scores={pnp.plot=2}] run function pnp:speed/over_limit/check_player
return run scoreboard players get #anyover pnp.tmp
