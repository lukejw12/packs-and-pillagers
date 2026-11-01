execute as @e[type=item_display,tag=pnp.cg_carry] if score @s pnp.cgo = #gu pnp.tmp run function pnp:copper_golem/release
scoreboard players set @s pnp.cgn 0
scoreboard players set @s pnp.cgs 0
scoreboard players set @s pnp.cgt 0
