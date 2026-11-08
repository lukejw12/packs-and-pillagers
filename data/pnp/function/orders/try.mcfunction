$execute store result score #ocount pnp.tmp if entity @e[type=item_display,tag=pnp.order,x=$(x),y=60,z=-4,dx=48,dy=12,dz=48]
execute if score #ocount pnp.tmp matches 2.. run return 0
$execute in pnp:board as @e[type=item_display,tag=pnp.c.trading_post,tag=!pnp.held,x=$(x),y=60,z=-4,dx=33,dy=12,dz=40,limit=1] at @s run function pnp:orders/spawn {p:$(p)}
