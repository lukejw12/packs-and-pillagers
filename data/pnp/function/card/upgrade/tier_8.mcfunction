execute if entity @s[tag=pnp.c.wither] run function pnp:card/upgrade/stat_delta {h:50,a:1}
execute if entity @s[tag=pnp.c.wildfire] run function pnp:card/upgrade/stat_delta {h:40,a:1}
execute if entity @s[tag=pnp.c.redstone_monstrosity] run function pnp:card/upgrade/stat_delta {h:50,a:1}
execute if entity @s[tag=pnp.c.warden] run function pnp:card/upgrade/stat_delta {h:20,a:0}
execute if entity @s[tag=pnp.c.illusioner,tag=!pnp.illusion] run function pnp:card/upgrade/stat_delta {h:15,a:0}
tag @s add pnp.v8
