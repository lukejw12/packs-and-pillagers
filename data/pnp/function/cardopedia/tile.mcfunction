$data modify storage pnp:pedia2 tt set from storage pnp:pedia2 cat.c$(c)
$execute as @e[type=item_display,tag=pnp.book_base,distance=..40] if score @s pnp.pid = #me pnp.tmp at @s positioned ~$(x) ~0.06 ~$(z) run function pnp:cardopedia/tile_at with storage pnp:pedia2 tt
$scoreboard players set @e[tag=pnp.pd_new] pnp.pslot $(i)
scoreboard players set @e[type=text_display,tag=pnp.pd_new] pnp.pts 510
scoreboard players operation @e[tag=pnp.pd_new] pnp.pid = #me pnp.tmp
tag @e[tag=pnp.pd_new] remove pnp.pd_new
