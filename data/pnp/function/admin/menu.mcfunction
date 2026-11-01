execute unless score @s pnp.plot matches 2..3 run return run tellraw @s {translate:"pnp.common.open_your_card_board_once_first",fallback:"Open your Card Board once first.",color:"gray"}
function pnp:world/deliver {card:"admin_codex"}
tellraw @s {translate:"pnp.admin.an_admin_codex_is_on_your",fallback:"An Admin Codex is on your card table. Right-click it to browse every card and spawn any of them.",color:"gold"}
