execute unless entity @e[type=item_display,tag=pnp.party_new] run return 0
scoreboard players operation #ppx pnp.tmp = #pi pnp.tmp
scoreboard players operation #ppx pnp.tmp %= #5 pnp.tmp
scoreboard players operation #ppx pnp.tmp *= #16 pnp.tmp
scoreboard players operation #ppx pnp.tmp += #pax pnp.tmp
scoreboard players operation #ppz pnp.tmp = #pi pnp.tmp
scoreboard players operation #ppz pnp.tmp /= #5 pnp.tmp
scoreboard players operation #ppz pnp.tmp *= #18 pnp.tmp
scoreboard players add #ppz pnp.tmp 200
execute store result storage pnp:board pp.x double 0.1 run scoreboard players get #ppx pnp.tmp
execute store result storage pnp:board pp.z double 0.1 run scoreboard players get #ppz pnp.tmp
execute as @e[type=item_display,tag=pnp.party_new,limit=1] run function pnp:gateway/place_one with storage pnp:board pp
scoreboard players add #pi pnp.tmp 1
function pnp:gateway/place_party
