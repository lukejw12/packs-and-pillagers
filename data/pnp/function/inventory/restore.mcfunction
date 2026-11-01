execute unless score @s pnp.invs matches 1 run return 0
execute store result storage pnp:board ivr.p int 1 run scoreboard players get @s pnp.pid
scoreboard players operation #ihx pnp.tmp = @s pnp.pid
scoreboard players operation #ihx pnp.tmp *= #1024 pnp.tmp
scoreboard players add #ihx pnp.tmp 2
execute store result storage pnp:board ivr.x int 1 run scoreboard players get #ihx pnp.tmp
function pnp:inventory/restore_for_player with storage pnp:board ivr
scoreboard players set @s pnp.invs 0
effect clear @s minecraft:invisibility
