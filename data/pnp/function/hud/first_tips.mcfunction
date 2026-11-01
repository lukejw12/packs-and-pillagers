execute if score @s pnp.notips matches 1 run return 0
execute unless score @s pnp.tipfood matches 1 if score #need pnp.tmp matches 1.. if score #food pnp.tmp < #need pnp.tmp if score #hdtime pnp.tmp matches 12000.. run function pnp:hud/tip_food
scoreboard players operation #hclose pnp.tmp = #hmax pnp.tmp
scoreboard players remove #hclose pnp.tmp 2
execute unless score @s pnp.tipcards matches 1 if score #hcards pnp.tmp >= #hclose pnp.tmp run function pnp:hud/tip_cards
