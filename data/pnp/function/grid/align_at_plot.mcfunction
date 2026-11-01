tag @e[type=item_display,tag=pnp.gsnap] remove pnp.gsnap
$execute in pnp:board positioned $(x) 40 -64 positioned ~-32 ~ ~ as @e[type=item_display,tag=pnp.card,dx=160,dy=60,dz=192,scores={pnp.idx=0}] at @s if function pnp:grid/can_snap run function pnp:grid/claim
$execute in pnp:board positioned $(x) 40 -64 positioned ~-32 ~ ~ as @e[type=item_display,tag=pnp.card,tag=!pnp.gsnap,dx=160,dy=60,dz=192,scores={pnp.idx=0}] at @s if function pnp:grid/can_snap align xz positioned ~0.5 ~ ~0.5 run function pnp:grid/snap
tag @e[type=item_display,tag=pnp.gsnap] remove pnp.gsnap
