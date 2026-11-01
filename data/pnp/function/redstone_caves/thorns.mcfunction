scoreboard players set #atk pnp.tmp 3
data modify storage pnp:board cause set value "Thorns from a Monstrosity Helmet"
execute at @s run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.0} ~ ~0.3 ~ 0.2 0.15 0.2 0 8
execute at @s run function pnp:fight/hit
