execute anchored eyes positioned ^ ^ ^ summon marker run function pnp:book/eye_position
execute as @e[type=marker,tag=pnp.cursor,distance=..64] if score @s pnp.pid = #me pnp.tmp run function pnp:book/hit
execute as @e[type=block_display,tag=pnp.kb_base,distance=..40] if score @s pnp.pid = #me pnp.tmp run function pnp:book/center
function pnp:book/relative_position
execute unless score #px pnp.tmp matches -3800..3800 run return run function pnp:controls/close
execute unless score #pz pnp.tmp matches -1800..1800 run return run function pnp:controls/close
execute if score #px pnp.tmp matches -2220..-1620 if score #pz pnp.tmp matches -840..-500 run return run function pnp:controls/show {k:"forward",kb:"key.forward",d:"Move forward across the table"}
execute if score #px pnp.tmp matches -2530..-1930 if score #pz pnp.tmp matches -440..-100 run return run function pnp:controls/show {k:"left",kb:"key.left",d:"Move left"}
execute if score #px pnp.tmp matches -2110..-1510 if score #pz pnp.tmp matches -440..-100 run return run function pnp:controls/show {k:"back",kb:"key.back",d:"Move back"}
execute if score #px pnp.tmp matches -1690..-1090 if score #pz pnp.tmp matches -440..-100 run return run function pnp:controls/show {k:"right",kb:"key.right",d:"Move right"}
execute if score #px pnp.tmp matches -3400..-2100 if score #pz pnp.tmp matches -40..300 run return run function pnp:controls/show {k:"sneak",kb:"key.sneak",d:"Leave the table. While painting, stop painting first"}
execute if score #px pnp.tmp matches -3400..-2100 if score #pz pnp.tmp matches 360..700 run return run function pnp:controls/show {k:"sprint",kb:"key.sprint",d:"Hold to zoom in close"}
execute if score #px pnp.tmp matches -1250..550 if score #pz pnp.tmp matches 360..700 run return run function pnp:controls/show {k:"jump",kb:"key.jump",d:"Hold to zoom out and move faster"}
execute if score #px pnp.tmp matches -330..270 if score #pz pnp.tmp matches -1240..-900 run return run function pnp:controls/show {k:"h7",kb:"key.hotbar.7",d:"The Grid: right-click to line every card up"}
execute if score #px pnp.tmp matches 90..690 if score #pz pnp.tmp matches -1240..-900 run return run function pnp:controls/show {k:"h8",kb:"key.hotbar.8",d:"These controls"}
execute if score #px pnp.tmp matches 510..1110 if score #pz pnp.tmp matches -1240..-900 run return run function pnp:controls/show {k:"h9",kb:"key.hotbar.9",d:"The Wrench: right-click to switch tool mode"}
execute if score #px pnp.tmp matches 1950..3550 if score #pz pnp.tmp matches -640..-300 run return run function pnp:controls/show {k:"attack",kb:"key.attack",d:"Pick up a card, click again to drop it. On empty felt, glide there"}
execute if score #px pnp.tmp matches 1950..3550 if score #pz pnp.tmp matches -140..200 run return run function pnp:controls/show {k:"use",kb:"key.use",d:"Use a card: open packs and books, learn ideas, rename villagers"}
