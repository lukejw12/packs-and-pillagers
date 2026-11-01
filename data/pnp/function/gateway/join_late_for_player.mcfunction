$execute unless data storage pnp:gw p$(p).run run return run title @s actionbar {translate:"pnp.gateway.that_gateway_is_closing",fallback:"That gateway is closing.",color:"gray"}
$scoreboard players set @s pnp.gwj $(p)
$function pnp:gateway/camera/join with storage pnp:gw p$(p).run
$function pnp:gateway/boss/players {p:$(p)}
