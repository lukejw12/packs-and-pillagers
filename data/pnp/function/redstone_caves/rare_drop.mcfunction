execute store result score #rd pnp.tmp run random value 1..100
$execute unless score #rd pnp.tmp matches ..$(p) run return 0
$function pnp:card/pop {card:"$(c)"}
$title @a[distance=..48] actionbar {text:"$(msg)",color:"gold"}
playsound minecraft:block.beacon.activate master @a[distance=..48] ~ ~ ~ 0.8 1.6
