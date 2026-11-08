$execute unless data storage pnp:cards defs.$(id) run return run tellraw @a {translate:"pnp.api.packs_pillagers_add_card_can_t",fallback:"Packs & Pillagers: add_card can't find a definition for %s in pnp:cards defs.",with:["$(id)"],color:"red"}
$execute unless data storage pnp:pedia2 cat.$(category) run return run tellraw @a {translate:"pnp.api.packs_pillagers_isn_t_a_cardopedia",fallback:"Packs & Pillagers: %s isn't a Cardopedia category. Use c1 to c9.",with:["$(category)"],color:"red"}
$function pnp:api/card/complete {id:"$(id)"}
$execute if data storage pnp:pedia2 meta.$(id) run return 0
$execute if data storage pnp:api registered.$(id) run return 0
$data modify storage pnp:api registered.$(id) set value 1b
$data modify storage pnp:cards order append value "$(id)"
$data modify storage pnp:cards listed.$(id) set value 1b
$data modify storage pnp:pedia2 cat.$(category).ids append value "$(id)"
$function pnp:api/card/cardopedia_entry {id:"$(id)"}
$execute if data storage pnp:cards defs.$(id).food run function pnp:api/card/add_food {id:"$(id)"}
