$execute unless score #rl pnp.tmp matches $(from)..$(to) run return 0
$scoreboard players set #ln pnp.tmp $(n)
$function pnp:raid/ladder/spawn {enemy:"$(c)"}
