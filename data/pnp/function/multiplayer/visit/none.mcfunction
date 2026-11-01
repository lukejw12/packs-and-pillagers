tellraw @s [{selector:"@a[tag=pnp.vhost]"},{text:" ",extra:[{translate:"pnp.multiplayer.hasn_t_set_up_a_card",fallback:"hasn't set up a card table yet."}],color:"gray"}]
tag @a remove pnp.vhost
return 1
