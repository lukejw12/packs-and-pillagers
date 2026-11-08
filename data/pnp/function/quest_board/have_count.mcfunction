scoreboard players set #qh pnp.tmp 0
$execute as @e[type=item_display,tag=pnp.c.$(hv),tag=!pnp.held] run function pnp:quest_board/count_owned
$execute store result storage pnp:qb p$(p).mp int 1 run scoreboard players get #qh pnp.tmp
$execute if score #qh pnp.tmp matches $(n).. run function pnp:quest_board/main_done {p:$(p)}
