function pnp:coop/mates
$title @a[tag=pnp.mate] actionbar {translate:"pnp.board.side_board.side_board_grew_to",fallback:"Side board grew to %s×%s.",with:["$(s)","$(s)"],color:"green"}
playsound minecraft:block.wood.place master @a[tag=pnp.mate] ~ ~ ~ 1 0.9
