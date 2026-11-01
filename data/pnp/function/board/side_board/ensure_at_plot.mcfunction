$execute in pnp:board as @e[type=item_display,tag=pnp.c.shop_side,x=$(x),y=60,z=-4,dx=33,dy=12,dz=40] run function pnp:card/remove
execute if score @s pnp.sblk matches 1 unless score @s pnp.sbv matches 2 run function pnp:board/side_board/clear_east with storage pnp:board tmp
execute unless score @s pnp.sblk matches 1 run return run function pnp:board/side_board/start_lock
$execute in pnp:board positioned $(x).0 60 -4.0 positioned ~-46 ~ ~ unless entity @e[type=item_display,tag=pnp.c.shop_side,dx=45,dy=12,dz=44] positioned ~31.5 65.01 ~22 run function pnp:card/spawn {card:"shop_side"}
$execute in pnp:board positioned $(x).0 60 -4.0 positioned ~-46 ~ ~ unless entity @e[type=item_display,tag=pnp.sb_lock,dx=45,dy=14,dz=44] positioned ~23 65.03 ~22 run function pnp:board/side_board/place_lock_sign
