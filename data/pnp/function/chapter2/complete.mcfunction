$title @a[scores={pnp.tpid=$(p)}] times 10 90 30
$title @a[scores={pnp.tpid=$(p)}] subtitle {translate:"pnp.quest_board.c2_complete_sub",fallback:"The End is next",color:"dark_purple"}
$title @a[scores={pnp.tpid=$(p)}] title {translate:"pnp.quest_board.c2_complete",fallback:"Chapter 2 complete",color:"gold"}
$tellraw @a[scores={pnp.tpid=$(p)}] {translate:"pnp.quest_board.c2_tease",fallback:"You beat the Wither! Chapter 3, the End, is coming in a future update.",color:"light_purple"}
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 0.8
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.3 1.2
