execute if entity @s[tag=pnp.tal.pumpkin] run return 0
execute if entity @s[tag=pnp.nightv] run return 0
tag @s add pnp.blinded
scoreboard players set @s pnp.blindt 100
particle minecraft:squid_ink ~ ~0.3 ~ 0.2 0.1 0.2 0.02 8
function pnp:fight/effects/icon {e:"blindness"}
