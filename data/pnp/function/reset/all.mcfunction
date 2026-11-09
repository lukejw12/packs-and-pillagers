tellraw @a {translate:"pnp.reset.start",fallback:"Resetting Packs & Pillagers…",color:"gold"}
tag @a[tag=pnp.in_board] add pnp.reset_open
execute as @a[tag=pnp.in_board] at @s run function pnp:board/close
scoreboard players set #rp pnp.tmp 0
execute store result score #rmax pnp.tmp run scoreboard players get #pid pnp.ids
function pnp:reset/plots
schedule function pnp:reset/finish 40t
