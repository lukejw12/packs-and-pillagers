scoreboard players remove @s pnp.vfish 3
function pnp:world/deliver {card:"cod"}
execute store result score #roll pnp.tmp run random value 1..20
execute if score #roll pnp.tmp matches 1 run function pnp:world/deliver {card:"treasure_map"}
execute if score @s pnp.vfish matches 3.. run function pnp:vanilla/fish
