execute positioned ~17.5 ~1.01 ~21 run function pnp:card/spawn {card:"rock"}
execute positioned ~19 ~1.01 ~21 run function pnp:card/spawn {card:"berry_bush"}
tellraw @s {translate:"pnp.board.plot.your_card_board_got_bigger_and",fallback:"Your card board got bigger, and there's a Rock and a Berry Bush on it now.",color:"green"}
