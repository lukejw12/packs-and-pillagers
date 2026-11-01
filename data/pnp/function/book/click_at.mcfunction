execute as @e[type=item_display,tag=pnp.book_base,distance=..40] if score @s pnp.pid = #me pnp.tmp run function pnp:book/center
function pnp:book/relative_position
execute unless score #px pnp.tmp matches -3600..3600 run return run function pnp:book/close
execute unless score #pz pnp.tmp matches -2250..2250 run return run function pnp:book/close
execute if score #px pnp.tmp matches 2300..3300 if score #pz pnp.tmp matches -2200..-1150 run return run function pnp:book/close
execute unless score #other pnp.tmp matches 1 if score @s pnp.bdet matches 1 if score @s pnp.bset matches 2 if score #px pnp.tmp matches 270.. run return run function pnp:admin/spawn
execute if score @s pnp.bdet matches 1 run return run function pnp:book/back
execute if score #px pnp.tmp matches -3350..-2250 if score #pz pnp.tmp matches 1150..2250 run return run function pnp:book/previous
execute if score #px pnp.tmp matches 2250..3350 if score #pz pnp.tmp matches 1150..2250 run return run function pnp:book/next
execute if score @s pnp.bset matches 1 run return run function pnp:cardopedia/click
function pnp:book/pick
