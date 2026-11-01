tag @s add pnp.rsc
execute as @e[type=item_display,tag=pnp.card,tag=!pnp.rsc,tag=!pnp.held,tag=!pnp.cg_carry,distance=..40,scores={pnp.idx=0}] at @s if block ~ ~-0.5 ~ #pnp:felt run tag @s add pnp.rsok
tag @e[type=item_display,tag=pnp.rsok,sort=nearest,limit=1] add pnp.rsref
tag @e[type=item_display,tag=pnp.rsok] remove pnp.rsok
scoreboard players set #rs pnp.tmp 0
execute if entity @e[type=item_display,tag=pnp.rsref] facing entity @e[type=item_display,tag=pnp.rsref,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.25 run function pnp:board/rescue_step
tag @e[type=item_display,tag=pnp.rsref] remove pnp.rsref
tag @s remove pnp.rsc
