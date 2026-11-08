execute store result score #enr pnp.tmp run random value 1..2
execute if score #enr pnp.tmp matches 1 run data modify storage pnp:board en merge value {id:"protection",k:"p"}
execute if score #enr pnp.tmp matches 2 run data modify storage pnp:board en merge value {id:"fire_protection",k:"f"}
