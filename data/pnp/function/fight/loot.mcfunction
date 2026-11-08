$data modify storage pnp:board die.loot set from storage pnp:cards defs.$(card).loot
function pnp:fight/loot_loop
execute if entity @s[tag=pnp.c.wither_skeleton] store result score #sk pnp.tmp run random value 1..100
execute if entity @s[tag=pnp.c.wither_skeleton] if score #sk pnp.tmp matches ..20 run function pnp:card/pop {card:"wither_skeleton_skull"}
execute if entity @s[tag=pnp.c.wither_skeleton] if score #sk pnp.tmp matches ..20 run function pnp:chapter2/event_at {qk:"c2_skull"}
execute if entity @s[tag=pnp.c.wither] run function pnp:chapter2/wither_dead
