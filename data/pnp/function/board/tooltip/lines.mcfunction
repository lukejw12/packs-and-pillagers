$data modify storage pnp:board tt set value [{sprite:"$(sprite)",atlas:"$(atlas)"},{text:" $(name)",color:"gold",bold:true},{text:"\n$(l1)",color:"gray"}]
$execute unless data storage pnp:board tipd{l2:""} run data modify storage pnp:board tt append value {text:"\n$(l2)",color:"gray"}
$execute unless data storage pnp:board tipd{l3:""} run data modify storage pnp:board tt append value {text:"\n$(l3)",color:"gray"}
$execute unless data storage pnp:board tipd{l4:""} run data modify storage pnp:board tt append value {text:"\n$(l4)",color:"gray"}
$data modify storage pnp:board tt append value {text:"\n$(kn)",color:"dark_gray",italic:true}
$execute unless data storage pnp:board tipd{hp:0} run data modify storage pnp:board tt append value {text:"\n♥ $(hp)   ⚔ $(atk)",color:"red"}
$execute if data storage pnp:board tipd{kind:"weapon"} run data modify storage pnp:board tt append value {text:"\n⚔ +$(atk) attack",color:"gray"}
$execute unless data storage pnp:board tipd{heal:0} unless data storage pnp:board tipd{heal:99} run data modify storage pnp:board tt append value {text:"\nHeals $(heal)",color:"green"}
execute if data storage pnp:board tipd{heal:99} run data modify storage pnp:board tt append value {text:"\nHeals fully",color:"green"}
$execute if data storage pnp:board tipd{kind:"shop"} run data modify storage pnp:board tt append value {text:"\nCosts $(price) emeralds",color:"dark_green"}
$execute unless data storage pnp:board tipd{sell:0} run data modify storage pnp:board tt append value {text:"\nSells for $(sl)",color:"dark_green"}
$execute unless data storage pnp:board tipd{sn:1} run data modify storage pnp:board tt append value {text:"\nStack of $(sn) · worth $(svs) ",color:"dark_aqua"}
execute unless data storage pnp:board tipd{sn:1} run data modify storage pnp:board tt append value {sprite:"item/emerald",atlas:"minecraft:items"}
