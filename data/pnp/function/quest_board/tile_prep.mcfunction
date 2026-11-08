data modify storage pnp:board qtp merge value {ts:0.6f,tz:-0.265f,lw:200,nm:"?"}
$execute if data storage pnp:cards defs.$(c).ts run data modify storage pnp:board qtp.ts set from storage pnp:cards defs.$(c).ts
$execute if data storage pnp:cards defs.$(c).tz run data modify storage pnp:board qtp.tz set from storage pnp:cards defs.$(c).tz
$execute if data storage pnp:cards defs.$(c).lw run data modify storage pnp:board qtp.lw set from storage pnp:cards defs.$(c).lw
$execute if data storage pnp:cards defs.$(c).name run data modify storage pnp:board qtp.nm set from storage pnp:cards defs.$(c).name
execute store result storage pnp:board qtp.st float 0.00078 run data get storage pnp:board qtp.ts 1000
execute store result storage pnp:board qtp.sz float 0.00078 run data get storage pnp:board qtp.tz 1000
$data modify storage pnp:board qtp.dx set from storage pnp:board qdx[$(i)]
