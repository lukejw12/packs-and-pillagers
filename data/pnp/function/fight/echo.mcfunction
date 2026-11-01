scoreboard players operation #efid pnp.tmp = @s pnp.fid
execute as @e[type=item_display,tag=pnp.k.enemy,tag=pnp.infight,tag=!pnp.tgt,distance=..16] if score @s pnp.fid = #efid pnp.tmp run tag @s add pnp.echo_c
tag @e[type=item_display,tag=pnp.echo_c,sort=random,limit=1] add pnp.echo_t
tag @e[type=item_display,tag=pnp.echo_c] remove pnp.echo_c
scoreboard players set #atk pnp.tmp 1
execute as @e[type=item_display,tag=pnp.echo_t,limit=1] at @s run particle minecraft:sculk_soul ~ ~0.25 ~ 0.1 0.1 0.1 0.02 4
execute as @e[type=item_display,tag=pnp.echo_t,limit=1] at @s run function pnp:fight/hit
tag @e[type=item_display,tag=pnp.echo_t] remove pnp.echo_t
