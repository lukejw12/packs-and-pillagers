$data modify storage pnp:pvp a$(p).surv set value []
$data modify storage pnp:pvp ab.list set from storage pnp:pvp a$(p).units
scoreboard players set #pi pnp.tmp 0
$function pnp:pvp/abort_loop {p:$(p)}
scoreboard players set @s pnp.pvst 3
tellraw @s {translate:"pnp.pvp.the_player_you_were_attacking_left",fallback:"The player you were attacking left their table, so your fighters are coming home.",color:"yellow"}
