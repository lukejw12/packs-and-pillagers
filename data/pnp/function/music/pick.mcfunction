$execute store result score #mn pnp.tmp run data get storage pnp:music tracks.$(cat)
scoreboard players set #mi pnp.tmp 0
execute if score #mn pnp.tmp matches 2.. run function pnp:music/random
execute store result storage pnp:music pk.i int 1 run scoreboard players get #mi pnp.tmp
$data modify storage pnp:music pk.cat set value "$(cat)"
function pnp:music/pick_track with storage pnp:music pk
