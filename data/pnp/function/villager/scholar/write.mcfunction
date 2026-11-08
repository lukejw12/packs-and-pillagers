scoreboard players set @s pnp.study 0
function pnp:progression/plot_here
execute store result score #sok pnp.tmp run function pnp:progression/study_pick with storage pnp:board pph
execute if score #sok pnp.tmp matches 1 run particle minecraft:enchant ~ ~0.6 ~ 0.3 0.3 0.3 1 30
