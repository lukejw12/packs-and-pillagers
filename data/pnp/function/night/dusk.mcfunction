scoreboard players operation #lastdusk pnp.ids = #day pnp.tmp
execute unless score #d3 pnp.tmp matches 2 as @a[scores={pnp.plot=2}] run function pnp:night/dusk_message
execute as @a[scores={pnp.plot=2}] run function pnp:nether/dusk_check
execute as @a[scores={pnp.plot=2}] run function pnp:progression/visit_dusk
execute as @a[scores={pnp.plot=2}] run function pnp:nether/event_roll
execute as @a[scores={pnp.plot=2..3,pnp.craid=1..}] at @s run function pnp:raid/captain
