scoreboard players set #side pnp.tmp -1
execute if score #px pnp.tmp matches -2990..-270 run scoreboard players set #side pnp.tmp 0
execute if score #px pnp.tmp matches 270..2990 run scoreboard players set #side pnp.tmp 1
execute if score #side pnp.tmp matches -1 run return 0
scoreboard players operation #line pnp.tmp = #pz pnp.tmp
scoreboard players add #line pnp.tmp 1253
scoreboard players operation #line pnp.tmp *= #10 pnp.tmp
scoreboard players set #lh pnp.tmp 1375
scoreboard players operation #line pnp.tmp /= #lh pnp.tmp
execute unless score #line pnp.tmp matches 0..16 run return 0
scoreboard players operation #pg pnp.tmp = @s pnp.book
scoreboard players operation #pg pnp.tmp *= #2 pnp.tmp
scoreboard players operation #pg pnp.tmp += #side pnp.tmp
execute store result storage pnp:board hit.s int 1 run scoreboard players get @s pnp.bset
execute store result storage pnp:board hit.i int 1 run scoreboard players get #pg pnp.tmp
execute store result storage pnp:board hit.l int 1 run scoreboard players get #line pnp.tmp
execute store result storage pnp:board hit.p int 1 run scoreboard players get @s pnp.here
function pnp:book/pick_entry with storage pnp:board hit
