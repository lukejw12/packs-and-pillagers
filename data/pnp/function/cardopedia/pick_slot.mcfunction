$execute unless data storage pnp:pedia2 v.p$(me).s$(i) run return run function pnp:cardopedia/detail/close
$execute if entity @s[tag=pnp.pd_admin] run return run function pnp:admin/codex_spawn with storage pnp:pedia2 v.p$(me).s$(i)
$data modify storage pnp:pedia2 dt set from storage pnp:pedia2 v.p$(me).s$(i)
function pnp:cardopedia/detail/show
