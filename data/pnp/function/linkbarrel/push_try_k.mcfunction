$execute if data block ~ ~ ~ Items[{Slot:$(s)b}] run return 0
$data modify block ~ ~ ~ Items append value {Slot:$(s)b,id:"$(give)",count:$(gn)}
data modify storage pnp:board lbo.ok set value 1b
return 1
