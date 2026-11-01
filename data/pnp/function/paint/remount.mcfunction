scoreboard players operation #me pnp.tmp = @s pnp.pid
scoreboard players operation #ms pnp.tmp = @s pnp.sess
execute as @e[type=item_display,tag=pnp.camera] if score @s pnp.pid = #me pnp.tmp if score @s pnp.sess = #ms pnp.tmp run tag @s add pnp.mycam
ride @s mount @e[type=item_display,tag=pnp.mycam,limit=1]
tag @e[type=item_display,tag=pnp.mycam] remove pnp.mycam
