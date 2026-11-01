execute as @a[scores={pnp.menu=1..}] run function pnp:menu/pick
execute if score #mclk pnp.tmp matches 0 unless score #mode pnp.ids matches 1.. run function pnp:menu/need
