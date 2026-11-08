$function pnp:card/pop {card:"$(c)"}
$title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.expedition.found",fallback:"The expedition found %s.",with:[{translate:"pnp.card.$(c).name"}],color:"gold"}
return 1
