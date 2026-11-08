execute positioned ~13.25 ~1.01 ~20.5 run function pnp:card/spawn {card:"villager"}
execute positioned ~14.75 ~1.01 ~20.5 run function pnp:card/spawn {card:"villager"}
execute positioned ~16.25 ~1.01 ~20.5 run function pnp:card/spawn {card:"oak_tree"}
execute positioned ~17.75 ~1.01 ~20.5 run function pnp:card/spawn {card:"rock"}
execute positioned ~19.25 ~1.01 ~20.5 run function pnp:card/spawn {card:"berry_bush"}
execute positioned ~20.75 ~1.01 ~20.5 run function pnp:card/spawn {card:"forest"}
execute positioned ~10.25 ~1.01 ~20.5 run function pnp:card/spawn {card:"guide_book"}
execute positioned ~10.25 ~1.01 ~18.75 run function pnp:card/spawn {card:"cardopedia"}
execute positioned ~ ~1.01 ~4 positioned ~11.5 ~ ~ run function pnp:card/spawn {card:"shop_humble"}
execute positioned ~ ~1.01 ~4 positioned ~13.5 ~ ~ run function pnp:card/spawn {card:"shop_farm"}
execute positioned ~ ~1.01 ~4 positioned ~15.5 ~ ~ run function pnp:card/spawn {card:"shop_adventure"}
execute positioned ~ ~1.01 ~4 positioned ~19 ~ ~ run function pnp:card/spawn {card:"shop_combat"}
execute positioned ~ ~1.01 ~4 positioned ~20.5 ~ ~ run function pnp:card/spawn {card:"sell_box"}
scoreboard players set @s pnp.gift 7
function pnp:board/size/move_shop
