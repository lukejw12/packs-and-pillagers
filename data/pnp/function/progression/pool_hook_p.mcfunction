$execute if data storage pnp:cards expd.$(pool) run return run function pnp:progression/expedition {p:$(p),pool:"$(pool)"}
$execute if data storage pnp:cards studyp.$(pool) run return run function pnp:progression/study_trip {p:$(p)}
$execute if data storage pnp:cards ptrip.$(pool) run function pnp:chapter2/event_at {qk:"wtrip"}
$execute if data storage pnp:cards pity.$(pool) run function pnp:progression/pity_count {p:$(p),pool:"$(pool)"}
$execute if data storage pnp:cards pfirst.$(pool) unless data storage pnp:pity p$(p).first.$(pool) run return run function pnp:progression/first_trip {p:$(p),pool:"$(pool)"}
$execute if data storage pnp:cards pity.$(pool) run return run function pnp:progression/pity_check {p:$(p),pool:"$(pool)"}
return 0
