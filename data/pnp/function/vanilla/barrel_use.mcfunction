advancement revoke @s only pnp:barrel_use
execute unless items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{pnp:{board_button:1b}}] run return 0
execute if predicate pnp:is_sneaking run return run function pnp:linkbarrel/bind
function pnp:vanilla/import_try
