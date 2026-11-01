execute if entity @s[tag=pnp.k.unit] run return 0
execute if entity @s[tag=pnp.k.baby] run return 0
execute if entity @s[tag=pnp.k.idea,tag=!pnp.revealed] run return run title @a[distance=..16,limit=1,sort=nearest] actionbar {translate:"pnp.board.drop.you_can_only_sell_ideas_you",fallback:"You can only sell ideas you already know. Right-click it to learn it first.",color:"light_purple"}
data modify storage pnp:board sl.card set from entity @s item.components."minecraft:custom_data".card
function pnp:board/drop/sell_card with storage pnp:board sl
