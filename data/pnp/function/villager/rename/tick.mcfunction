scoreboard players add @s pnp.rnt 1
execute if score @s pnp.rnx matches 1.. run return run function pnp:villager/rename/end {m:"Rename cancelled."}
execute if score @s pnp.rnt matches 2400.. run return run function pnp:villager/rename/end {m:"Rename cancelled."}
execute unless items entity @s container.* *[minecraft:custom_data~{pnp:{namebook:1b}}] run return run function pnp:villager/rename/end {m:"Rename cancelled."}
data remove storage pnp:board rn
data modify storage pnp:board rn.raw set from entity @s Inventory[{components:{"minecraft:custom_data":{pnp:{namebook:1b}}}}].components."minecraft:writable_book_content".pages[0].raw
execute unless data storage pnp:board rn.raw run data modify storage pnp:board rn.raw set from entity @s Inventory[{components:{"minecraft:custom_data":{pnp:{namebook:1b}}}}].components."minecraft:written_book_content".pages[0].raw
execute unless data storage pnp:board rn.raw run return 0
function pnp:villager/rename/apply
