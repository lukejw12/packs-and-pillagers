execute as @a[scores={pnp.mlv2=1..}] run tag @s remove pnp.mshown
scoreboard players reset @a pnp.mlv2
execute unless entity @a[tag=pnp.mhost] run tag @r add pnp.mhost
execute as @a[tag=pnp.mhost,tag=!pnp.mshown] run function pnp:menu/open
execute as @a[tag=!pnp.mhost,tag=!pnp.mwait] run function pnp:menu/wait
