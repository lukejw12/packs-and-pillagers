data remove storage pnp:board hitl
$data modify storage pnp:board hitl set from storage pnp:book p$(s)[$(i)].L[$(l)]
execute if data storage pnp:board hitl.a run return run function pnp:admin/settings/act with storage pnp:board hitl
execute if data storage pnp:board hitl.j run return run function pnp:book/jump with storage pnp:board hitl
execute unless data storage pnp:board hitl.c run return 0
$data modify storage pnp:board hitl.p set value $(p)
execute if data storage pnp:board hitl.r run return run function pnp:book/pick_recipe with storage pnp:board hitl
execute if data storage pnp:board hitl.g run return run function pnp:book/pick_card with storage pnp:board hitl
function pnp:book/detail with storage pnp:board hitl
