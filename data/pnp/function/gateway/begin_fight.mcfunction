$data modify storage pnp:gw p$(p).run set value {p:$(p),s:"$(s)",st:$(st),name:"$(name)",gst:$(gst),gx:$(gx),gz:$(gz),cx:$(cx),cy:$(cy),cz:$(cz),ax:$(ax),ax2:$(ax2),axc:$(axc),r1:$(r1),r2:$(r2),f1:$(f1),f2:$(f2)}
$execute in pnp:board run forceload add $(ax) 0 $(ax2) 31
