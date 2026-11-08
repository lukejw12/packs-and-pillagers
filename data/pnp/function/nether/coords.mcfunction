$scoreboard players set #np pnp.tmp $(p)
scoreboard players operation #nx pnp.tmp = #np pnp.tmp
scoreboard players operation #nx pnp.tmp *= #1024 pnp.tmp
scoreboard players add #nx pnp.tmp 768
execute store result storage pnp:board nt.x int 1 run scoreboard players get #nx pnp.tmp
scoreboard players add #nx pnp.tmp 16
execute store result storage pnp:board nt.cx int 1 run scoreboard players get #nx pnp.tmp
scoreboard players add #nx pnp.tmp 15
execute store result storage pnp:board nt.x2 int 1 run scoreboard players get #nx pnp.tmp
$data modify storage pnp:board nt.p set value $(p)
