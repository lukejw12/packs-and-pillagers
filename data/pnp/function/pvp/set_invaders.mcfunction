tag @s add pnp.inv
$scoreboard players set @s pnp.hp $(hp)
$scoreboard players set @s pnp.hpmax $(hp)
$scoreboard players set @s pnp.atk $(atk)
scoreboard players operation @s pnp.paid = #pa pnp.tmp
scoreboard players operation @s pnp.pvi = #pi pnp.tmp
function pnp:fight/tag_role
particle minecraft:angry_villager ~ ~0.4 ~ 0.2 0.1 0.2 0 4
