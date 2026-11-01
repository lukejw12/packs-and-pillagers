$execute store result score #api_len pnp.tmp run data get storage pnp:cards defs.$(id).name
execute if score #api_len pnp.tmp matches ..0 run scoreboard players set #api_len pnp.tmp 1
scoreboard players set #api_ts pnp.tmp 4730
scoreboard players operation #api_ts pnp.tmp /= #api_len pnp.tmp
execute if score #api_ts pnp.tmp matches 601.. run scoreboard players set #api_ts pnp.tmp 600
execute if score #api_ts pnp.tmp matches ..249 run scoreboard players set #api_ts pnp.tmp 250
scoreboard players set #api_tz pnp.tmp 600
scoreboard players operation #api_tz pnp.tmp -= #api_ts pnp.tmp
scoreboard players set #api5 pnp.tmp 5
scoreboard players set #api4 pnp.tmp 4
scoreboard players operation #api_tz pnp.tmp *= #api5 pnp.tmp
scoreboard players operation #api_tz pnp.tmp /= #api4 pnp.tmp
scoreboard players add #api_tz pnp.tmp 2650
scoreboard players set #api_neg pnp.tmp -1
scoreboard players operation #api_tz pnp.tmp *= #api_neg pnp.tmp
$execute store result storage pnp:cards defs.$(id).ts float 0.001 run scoreboard players get #api_ts pnp.tmp
$execute store result storage pnp:cards defs.$(id).tz float 0.0001 run scoreboard players get #api_tz pnp.tmp
$execute unless data storage pnp:cards defs.$(id).lw run data modify storage pnp:cards defs.$(id).lw set value 200
