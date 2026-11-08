$data modify storage pnp:board wbe.e set value "$(e)"
execute if entity @s[tag=pnp.waterb] if data storage pnp:board wbe{e:"mining_fatigue"} run return 0
$scoreboard players set @s pnp.$(s) $(t)
$function pnp:fight/effects/icon {e:"$(e)"}
