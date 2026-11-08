data modify storage pnp:board ppb.card set from storage pnp:machine io.c
function pnp:card/pop with storage pnp:board ppb
title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.portal.no_partner",fallback:"There's no portal on the other table to send it to.",color:"gray"}
