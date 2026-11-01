$execute unless data storage pnp:cards defs.$(id) run return run tellraw @a {text:"Packs & Pillagers: add_card can't find a definition for $(id) in pnp:cards defs.",color:"red"}
$execute unless data storage pnp:pedia2 cat.$(category) run return run tellraw @a {text:"Packs & Pillagers: $(category) isn't a Cardopedia category. Use c1 to c9.",color:"red"}
$execute if data storage pnp:pedia2 meta.$(id) run return 0
$execute if data storage pnp:api registered.$(id) run return 0
$data modify storage pnp:api registered.$(id) set value 1b
$function pnp:api/card/kind_name with storage pnp:cards defs.$(id)
$execute unless data storage pnp:cards defs.$(id).sl if data storage pnp:cards defs.$(id).sell run function pnp:api/card/sell_label {id:"$(id)"}
$execute unless data storage pnp:cards defs.$(id).ts run function pnp:api/card/fit_title {id:"$(id)"}
$function pnp:api/card/fill_defaults {id:"$(id)"}
$data modify storage pnp:cards order append value "$(id)"
$data modify storage pnp:cards listed.$(id) set value 1b
$data modify storage pnp:pedia2 cat.$(category).ids append value "$(id)"
$function pnp:api/card/cardopedia_entry {id:"$(id)"}
$execute if data storage pnp:cards defs.$(id).food run function pnp:api/card/add_food {id:"$(id)"}
