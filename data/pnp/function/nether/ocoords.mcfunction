$scoreboard players set #np pnp.tmp $(p)
scoreboard players operation #nx pnp.tmp = #np pnp.tmp
scoreboard players operation #nx pnp.tmp *= #1024 pnp.tmp
scoreboard players add #nx pnp.tmp 16
execute store result storage pnp:board ot.cx int 1 run scoreboard players get #nx pnp.tmp
$data modify storage pnp:board ot.p set value $(p)
