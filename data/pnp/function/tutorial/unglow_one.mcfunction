tag @s remove pnp.tglow
execute unless entity @s[tag=pnp.held] run data merge entity @s {Glowing:0b}
