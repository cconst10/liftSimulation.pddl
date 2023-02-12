(define (problem elevators1)
 (:domain elevators-netbenefit-numeric)
(:objects 
    f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 - floor
    p0 p1 p2 p3 p4 p5 p6 p7 - passenger
    fast0 fast1 - fast-elevator
    slow0 slow1 - slow-elevator
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (above f0 f1) (above f0 f2) (above f0 f3) (above f0 f4) (above f0 f5) (above f0 f6) (above f0 f7) (above f0 f8) (above f0 f9) (above f0 f10) (above f0 f11) 
    (above f1 f2) (above f1 f3) (above f1 f4) (above f1 f5) (above f1 f6) (above f1 f7) (above f1 f8) (above f1 f9) (above f1 f10) (above f1 f11)
    (above f2 f3) (above f2 f4) (above f2 f5) (above f2 f6) (above f2 f7) (above f2 f8) (above f2 f9) (above f2 f10) (above f2 f11)
    (above f3 f4) (above f3 f5) (above f3 f6) (above f3 f7) (above f3 f8) (above f3 f9) (above f3 f10) (above f3 f11) 
    (above f4 f5) (above f4 f6) (above f4 f7) (above f4 f8) (above f4 f9) (above f4 f10) (above f4 f11) 
    (above f5 f6) (above f5 f7) (above f5 f8) (above f5 f9) (above f5 f10) (above f5 f11)
    (above f6 f7) (above f6 f8) (above f6 f9) (above f6 f10) (above f6 f11) 
    (above f7 f8) (above f7 f9) (above f7 f10) (above f7 f11) 
    (above f8 f9) (above f8 f10) (above f8 f11) 
    (above f9 f10) (above f9 f11) 
    (above f10 f11)  

    ;;fast lift0 can only go up or down 10 floors
    (lift-at fast0 f0)
    (reachable-floor fast0 f10)
    (reachable-floor fast0 f0)

    ;;fast lift1 can only go up or down 10 floors
    (lift-at fast1 f1)
    (reachable-floor fast1 f1)
    (reachable-floor fast1 f11)

    ;;slow lift0 can go anywhere
    (lift-at slow0 f5)
    (reachable-floor slow0 f0)
    (reachable-floor slow0 f1)
    (reachable-floor slow0 f2)
    (reachable-floor slow0 f3)
    (reachable-floor slow0 f4)
    (reachable-floor slow0 f5)
    (reachable-floor slow0 f6)
    (reachable-floor slow0 f7)
    (reachable-floor slow0 f8)
    (reachable-floor slow0 f9)
    (reachable-floor slow0 f10)
    (reachable-floor slow0 f11)

    ;;slow lift1 can go anywhere
    (lift-at slow1 f9)
    (reachable-floor slow1 f0)
    (reachable-floor slow1 f1)
    (reachable-floor slow1 f2)
    (reachable-floor slow1 f3)
    (reachable-floor slow1 f4)
    (reachable-floor slow1 f5)
    (reachable-floor slow1 f6)
    (reachable-floor slow1 f7)
    (reachable-floor slow1 f8)
    (reachable-floor slow1 f9)
    (reachable-floor slow1 f10)
    (reachable-floor slow1 f11)

    ;;setting floor origin randomly for passengers
    (passenger-at p0 f5)
    (passenger-at p1 f2)
    (passenger-at p2 f8)
    (passenger-at p3 f9)
    (passenger-at p4 f1)
    (passenger-at p5 f0)
    (passenger-at p6 f11)
    (passenger-at p7 f3)

)

(:goal (and
    ;todo: put the goal condition here
    (passenger-at p0 f1)
    (passenger-at p1 f5)
    (passenger-at p2 f2)
    (passenger-at p3 f4)
    (passenger-at p4 f10)
    (passenger-at p5 f5)
    (passenger-at p6 f7)
    (passenger-at p7 f11)

))

)
