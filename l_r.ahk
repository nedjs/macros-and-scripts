# alt+left/right home end. Extensions for holding shift as well
!Left::Send {Home}
!Right::Send {End}
+!Left::Send +{Home}
+!Right::Send +{End}

# I hold down alt while doing left and right too, keep bindings so it doesnt mess it up
!Up::Send {Up}
!Down::Send {Down}
+!Up::Send +{Up}
+!Down::Send +{Down}

// select word with ctrl+w
^w::SendInput {right}{Ctrl Down}{left}+{right}{Ctrl Up}


