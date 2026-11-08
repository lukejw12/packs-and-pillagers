scoreboard players operation #phv pnp.tmp = @s pnp.ph
execute as @e[type=item_display,tag=pnp.port,tag=pnp.psel,distance=..48] run function pnp:wrench/connect/a
execute as @e[type=item_display,tag=pnp.port,distance=..48] if score @s pnp.portid = #phv pnp.tmp run function pnp:wrench/connect/b
execute if score #au pnp.tmp = #bu pnp.tmp run return run title @s actionbar {translate:"pnp.wrench.a_card_can_t_link_to",fallback:"A card can't link to itself.",color:"red"}
scoreboard players set #okc pnp.tmp 0
execute if score #ap pnp.tmp matches 11.. if score #bp pnp.tmp matches ..4 run function pnp:wrench/connect/a_to_b
execute if score #okc pnp.tmp matches 0 if score #bp pnp.tmp matches 11.. if score #ap pnp.tmp matches ..4 run function pnp:wrench/connect/b_to_a
execute if score #okc pnp.tmp matches 0 run return run title @s actionbar {translate:"pnp.wrench.link_an_output_orange_to_an",fallback:"Link an output (orange) to an input (green).",color:"red"}
function pnp:wrench/link/make
function pnp:quest_board/event_self {qk:"wrench_link"}
