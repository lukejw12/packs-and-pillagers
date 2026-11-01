execute unless score #lastdusk pnp.ids matches -2147483648.. run scoreboard players operation #lastdusk pnp.ids = #day pnp.tmp
execute if score #lastdusk pnp.ids = #day pnp.tmp unless score #dfix pnp.ids matches 1 run scoreboard players remove #lastdusk pnp.ids 1
scoreboard players set #dfix pnp.ids 1
execute unless score #dt pnp.tmp matches 13000..22999 run return 0
execute if score #day pnp.tmp > #lastdusk pnp.ids run function pnp:night/dusk
execute as @a[scores={pnp.plot=2}] run function pnp:night/roll
