$function pnp:quest_board/rewards/$(k) with storage pnp:board qbw
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"✔ ",extra:[{translate:"pnp.quest_board.quest_complete",fallback:"Quest complete:"}," "],color:"gold"},{translate:"$(nk)",fallback:"$(nf)",color:"white"}]
$tellraw @a[scores={pnp.tpid=$(p)}] {text:"   ",extra:[{translate:"$(rk)",fallback:"$(rf)"}],color:"#c8a26a"}
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.4
