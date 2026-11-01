$bossbar remove pnp:gw$(p)
scoreboard players remove #cob pnp.tmp 1
execute if score #cob pnp.tmp matches 1.. store result storage pnp:board cob.p int 1 run scoreboard players get #cob pnp.tmp
execute if score #cob pnp.tmp matches 1.. run function pnp:core/clear_old_bars with storage pnp:board cob
