$execute store result score #qch pnp.tmp run data get storage pnp:quests p$(p).ch
data modify storage pnp:board qd.want set value ""
execute if score #qch pnp.tmp matches 0 run data modify storage pnp:board qd.want set value "q_lumber"
execute if score #qch pnp.tmp matches 1 run data modify storage pnp:board qd.want set value "q_stone"
execute if score #qch pnp.tmp matches 2 run data modify storage pnp:board qd.want set value "q_harvest"
execute if score #qch pnp.tmp matches 3 run data modify storage pnp:board qd.want set value "q_village"
execute if score #qch pnp.tmp matches 4 run data modify storage pnp:board qd.want set value "q_housing"
execute if score #qch pnp.tmp matches 5 run data modify storage pnp:board qd.want set value "q_survivor"
$execute if data storage pnp:board qd{want:"$(c)"} store result storage pnp:quests p$(p).ch int 1 run scoreboard players add #qch pnp.tmp 1
