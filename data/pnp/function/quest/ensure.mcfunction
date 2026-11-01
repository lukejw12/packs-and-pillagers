execute store result storage pnp:board qe.p int 1 run scoreboard players get @s pnp.pid
scoreboard players operation #qx pnp.tmp = @s pnp.pid
scoreboard players operation #qx pnp.tmp *= #1024 pnp.tmp
execute store result storage pnp:board qe.x0 int 1 run scoreboard players get #qx pnp.tmp
scoreboard players add #qx pnp.tmp 16
execute store result storage pnp:board qe.b1 int 1 run scoreboard players get #qx pnp.tmp
scoreboard players add #qx pnp.tmp 16
execute store result storage pnp:board qe.b2 int 1 run scoreboard players get #qx pnp.tmp
scoreboard players add #qx pnp.tmp 1
execute store result storage pnp:board qe.q1 int 1 run scoreboard players get #qx pnp.tmp
scoreboard players add #qx pnp.tmp 1
execute store result storage pnp:board qe.f1 int 1 run scoreboard players get #qx pnp.tmp
scoreboard players add #qx pnp.tmp 4
execute store result storage pnp:board qe.cx int 1 run scoreboard players get #qx pnp.tmp
scoreboard players add #qx pnp.tmp 5
execute store result storage pnp:board qe.f2 int 1 run scoreboard players get #qx pnp.tmp
scoreboard players add #qx pnp.tmp 1
execute store result storage pnp:board qe.q2 int 1 run scoreboard players get #qx pnp.tmp
scoreboard players add #qx pnp.tmp 3
execute store result storage pnp:board qe.c2 int 1 run scoreboard players get #qx pnp.tmp
function pnp:quest/ensure_at_plot with storage pnp:board qe
