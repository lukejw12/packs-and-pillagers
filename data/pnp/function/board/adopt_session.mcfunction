scoreboard players set @s pnp.sess 1
scoreboard players operation #op pnp.tmp = @s pnp.pid
execute as @e[tag=pnp.board_ent] if score @s pnp.pid = #op pnp.tmp run scoreboard players set @s pnp.sess 1
