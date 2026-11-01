execute if score #qn pnp.tmp matches ..0 run return 0
$function pnp:quest/world/send {qk:"$(qk)"}
scoreboard players remove #qn pnp.tmp 1
$function pnp:quest/world/loop {qk:"$(qk)"}
