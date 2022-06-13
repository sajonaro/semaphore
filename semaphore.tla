---- MODULE semaphore ----

VARIABLE color

TypeOK == color \in {"red","yellow","green"}

Init == color = "red"

TurnGreen ==
    /\  color  = "red"
    /\  color' = "green"

TurnRed ==
    /\ color  =  "yellow"
    /\ color' =  "red"

TurnYellow ==
    /\ color  = "green"
    /\ color'  = "yellow" 

Next == 
    \/ TurnGreen
    \/ TurnRed
    \/ TurnYellow


====