$scoreboard players set @s pnp.visit $(h)
$scoreboard players set #vcx pnp.tmp $(h)
scoreboard players operation #vcx pnp.tmp *= #1024 pnp.tmp
scoreboard players add #vcx pnp.tmp 16
execute store result storage pnp:board tmp.cx int 1 run scoreboard players get #vcx pnp.tmp
function pnp:board/return/save
function pnp:board/open_at with storage pnp:board tmp
