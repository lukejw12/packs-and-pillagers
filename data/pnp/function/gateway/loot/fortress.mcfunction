execute positioned ~-1.6 ~ ~-0.8 run function pnp:card/spawn {card:"blaze_rod"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..70 positioned ~0 ~ ~-0.8 run function pnp:card/spawn {card:"nether_wart"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..50 positioned ~1.6 ~ ~-0.8 run function pnp:card/spawn {card:"gold_ingot"}
execute store result score #lr pnp.tmp run random value 1..100
summon marker ~ ~ ~ {Tags:["pnp.fsk"]}
execute as @e[type=marker,tag=pnp.fsk,limit=1,sort=nearest] run function pnp:progression/plot_here
kill @e[type=marker,tag=pnp.fsk]
function pnp:progression/fortress_skull with storage pnp:board pph
execute if score #lr pnp.tmp matches ..30 positioned ~3.2 ~ ~-0.8 run function pnp:card/spawn {card:"wither_skeleton_skull"}
execute if score #lr pnp.tmp matches ..30 run function pnp:chapter2/event_here {qk:"c2_skull"}
execute store result score #lr pnp.tmp run random value 1..100
execute if score #lr pnp.tmp matches ..10 positioned ~-2.4 ~ ~0.8 run function pnp:card/spawn {card:"saddle"}
