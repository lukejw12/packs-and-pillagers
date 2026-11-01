execute store result storage pnp:board bb.p int 1 run scoreboard players get #gp pnp.tmp
execute as @e[type=item_display,tag=pnp.boss,distance=..15,limit=1] run function pnp:gateway/bar/update_for_player with storage pnp:board bb
