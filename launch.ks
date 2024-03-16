clearscreen.
set TargetHeight to 75000.
set m0 to SHIP:MASS.

print "Start Rocket".
WAIT 1.
STAGE.
lock THROTTLE to 1.0.
lock STEERING to HEADING(90,90).



UNTIL ORBIT:apoapsis >= 15000{
    set fuel to (m0-SHIP:MASS).
    print "Ap: " + ORBIT:apoapsis.
    print "Pe: " + ORBIT:periapsis.
    print "Fuel: " + fuel.
    if fuel < 1 {wait 1. stage.}
    wait 0.1.
    clearscreen.
}

UNTIL ORBIT:apoapsis >= TargetHeight {
    set angle to (90-90*arcTan(SHIP:altitude/TargetHeight)).

    lock STEERING to angle.
    
    print "Ap: " + ORBIT:apoapsis.
    print "Pe: " + ORBIT:periapsis.
    print "Angle: " + angle.
    clearscreen.
}


lock THROTTLE to 0.
lock STEERING to heading(90,0).

print "END PROGRAMM".


