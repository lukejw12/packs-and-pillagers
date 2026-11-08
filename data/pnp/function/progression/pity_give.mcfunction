$function pnp:card/pop {card:"$(c)"}
$title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.pity.given",fallback:"Found at last: %s",with:[{translate:"pnp.card.$(c).name"}],color:"gold"}
playsound minecraft:block.beacon.activate master @a[distance=..48] ~ ~ ~ 0.6 1.6
return 1
