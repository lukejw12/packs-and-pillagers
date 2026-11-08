$data modify storage pnp:board tipd set from storage pnp:cards defs.$(card)
$data modify storage pnp:board tipd.hp set value $(hp)
$data modify storage pnp:board tipd.atk set value $(atk)
$data modify storage pnp:board tipd.sn set value $(sn)
$data modify storage pnp:board tipd.sv set value $(sv)
$data modify storage pnp:board tipd.svs set value "$(svs)"
$execute if data storage pnp:board tipj.rev run function pnp:idea/reveal_tip {c:"$(card)"}
function pnp:board/tooltip/lines with storage pnp:board tipd
function pnp:villager/tips/extra_lines
execute if data entity @s item.components."minecraft:custom_data".en run function pnp:enchant/tooltip
