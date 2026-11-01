function pnp:cardopedia/locate
execute if score #px pnp.tmp matches -3450..-150 if score #pz pnp.tmp matches -2250..-1060 unless score @s pnp.pcat matches ..0 run return run function pnp:cardopedia/to_index
execute if score @s pnp.pcat matches ..0 if score #hs pnp.tmp matches 0..8 run return run function pnp:cardopedia/to_category
execute if score #hs pnp.tmp matches 0.. run return run function pnp:cardopedia/pick
function pnp:cardopedia/detail/close
