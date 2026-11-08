$function pnp:api/card/kind_name with storage pnp:cards defs.$(id)
$execute unless data storage pnp:cards defs.$(id).sl if data storage pnp:cards defs.$(id).sell run function pnp:api/card/sell_label {id:"$(id)"}
$execute unless data storage pnp:cards defs.$(id).ts run function pnp:api/card/fit_title {id:"$(id)"}
$function pnp:api/card/fill_defaults {id:"$(id)"}
