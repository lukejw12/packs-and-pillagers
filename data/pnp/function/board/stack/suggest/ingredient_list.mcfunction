execute unless data storage pnp:board sur.il[0] run return 0
function pnp:board/stack/suggest/ingredient with storage pnp:board sur.il[0]
execute if score #ok pnp.tmp matches 0 run return 0
data remove storage pnp:board sur.il[0]
function pnp:board/stack/suggest/ingredient_list
