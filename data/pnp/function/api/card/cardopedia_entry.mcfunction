$data modify storage pnp:pedia2 meta.$(id) set value {}
$data modify storage pnp:pedia2 meta.$(id).n set from storage pnp:cards defs.$(id).name
$execute store result storage pnp:pedia2 meta.$(id).st float 0.00085 run data get storage pnp:cards defs.$(id).ts 1000
$execute store result storage pnp:pedia2 meta.$(id).tzs float 0.000085 run data get storage pnp:cards defs.$(id).tz 10000
$execute unless data storage pnp:pedia2 tip.$(id) run function pnp:api/card/cardopedia_tip {id:"$(id)"}
