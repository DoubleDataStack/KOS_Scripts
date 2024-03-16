CLEARSCREEN.

SET TargetHeight TO 75000.
SET m0 TO SHIP:MASS.

PRINT "Start Rocket".
WAIT 1.
STAGE.
PRINT "Stage activated".
LOCK THROTTLE TO 1.0.
LOCK STEERING TO HEADING(90,90).



UNTIL ORBIT:apoapsis >= 15000{
    PRINT "Ap: " + ORBIT:apoapsis.
    PRINT "Pe: " + ORBIT:periapsis.
    PRINT "Fuel: " + (m0-SHIP:MASS).
    WAIT 0.1.
    CLEARSCREEN.
}

UNTIL ORBIT:apoapsis >= TargetHeight {
    LOCK STEERING TO HEADING(90, 90-90*(SHIP:altitude/TargetHeight)).
    PRINT "Ap: " + ORBIT:apoapsis.
    PRINT "Pe: " + ORBIT:periapsis.
    PRINT "Angle: " + (90-90*(SHIP:altitude/TargetHeight)).
    CLEARSCREEN.
}


LOCK THROTTLE TO 0.
LOCK STEERING TO heading(90,0).

PRINT "END PROGRAMM".


