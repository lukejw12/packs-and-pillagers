$scoreboard players set #qeo pnp.tmp $(o)
$execute if score #qeo pnp.tmp matches -1 run return run function pnp:quest_board/event_all {qk:"$(qk)"}
$function pnp:quest_board/event_for_player {o:$(o),qk:"$(qk)"}
