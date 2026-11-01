execute as @e[type=marker,tag=pnp.glide] if score @s pnp.pid = #me pnp.tmp run tag @s add pnp.glide_me
execute on vehicle run function pnp:board/glide/step
tag @e[type=marker,tag=pnp.glide_me] remove pnp.glide_me
