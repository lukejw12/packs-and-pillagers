$function pnp:card/pop {card:"$(c)"}
$title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.study.wrote",fallback:"A villager wrote down %s.",with:[{storage:"pnp:cards",nbt:"ideas.$(c).name"}],color:"light_purple"}
return 1
