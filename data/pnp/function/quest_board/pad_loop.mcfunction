$execute if score #qpl pnp.tmp matches $(n).. run return 0
$data modify storage pnp:board $(l) append value "\n"
scoreboard players add #qpl pnp.tmp 1
$function pnp:quest_board/pad_loop {l:"$(l)",n:$(n)}
