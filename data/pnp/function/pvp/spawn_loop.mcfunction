execute unless data storage pnp:pvp sp.list[0] run return 0
data modify storage pnp:pvp sp.u set from storage pnp:pvp sp.list[0]
data remove storage pnp:pvp sp.list[0]
scoreboard players operation #po pnp.tmp = #pi pnp.tmp
scoreboard players operation #po pnp.tmp *= #c16 pnp.tmp
scoreboard players remove #po pnp.tmp 60
execute store result storage pnp:pvp sp.o double 0.1 run scoreboard players get #po pnp.tmp
data modify storage pnp:pvp sp.c set value "invader"
execute if data storage pnp:pvp sp.u{c:"wolf"} run data modify storage pnp:pvp sp.c set value "invader_wolf"
execute if data storage pnp:pvp sp.u{c:"iron_golem"} run data modify storage pnp:pvp sp.c set value "invader_golem"
execute store result storage pnp:pvp sp.hp int 1 run data get storage pnp:pvp sp.u.hp
execute store result storage pnp:pvp sp.atk int 1 run data get storage pnp:pvp sp.u.atk
scoreboard players operation #poz pnp.tmp = #pi pnp.tmp
scoreboard players set #c12v pnp.tmp 12
scoreboard players operation #poz pnp.tmp *= #c12v pnp.tmp
scoreboard players remove #poz pnp.tmp 30
execute store result storage pnp:pvp sp.oz double 0.1 run scoreboard players get #poz pnp.tmp
execute if score #hasp pnp.tmp matches 1 run function pnp:pvp/spawn_one_at_portal with storage pnp:pvp sp
execute unless score #hasp pnp.tmp matches 1 run function pnp:pvp/spawn_one with storage pnp:pvp sp
scoreboard players add #pi pnp.tmp 1
function pnp:pvp/spawn_loop
