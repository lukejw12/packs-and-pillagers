data modify storage pnp:board pgo set value [{"text":"","color":"#3a2614"}]
data modify storage pnp:board pge set from storage pnp:board pgsrc.e
$data modify storage pnp:board pgp.p set value $(p)
function pnp:book/page_loop
data modify storage pnp:board pgo append from storage pnp:board pgsrc.t
$execute as @e[type=text_display,tag=pnp.book_$(side),distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set from storage pnp:board pgo
$execute as @e[type=text_display,tag=pnp.book_$(side)h,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set from storage pnp:board pgsrc.h
