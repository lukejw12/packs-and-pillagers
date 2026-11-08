$scoreboard players set #cfp pnp.tmp $(p)
scoreboard players operation #cfp pnp.tmp *= #1024 pnp.tmp
execute store result storage pnp:board ord.x int 1 run scoreboard players get #cfp pnp.tmp
