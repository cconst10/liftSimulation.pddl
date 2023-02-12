(define (domain elevators-netbenefit-numeric)
  (:requirements :typing )
  (:types 	elevator - object 
			      slow-elevator fast-elevator - elevator
   			    passenger - object
          	floor - object
         )

(:predicates 
	(passenger-at ?person - passenger ?floor - floor)
	(boarded ?person - passenger ?lift - elevator)
	(lift-at ?lift - elevator ?floor - floor)
	(reachable-floor ?lift - elevator ?floor - floor)
	(above ?floor1 - floor ?floor2 - floor)
)

(:action move-up-slow
  :parameters (?lift - slow-elevator ?f1 - floor ?f2 - floor )
  :precondition (and (lift-at ?lift ?f1) (above ?f1 ?f2 ) (reachable-floor ?lift ?f2) )
  :effect (and (lift-at ?lift ?f2) (not (lift-at ?lift ?f1))))

(:action move-down-slow
  :parameters (?lift - slow-elevator ?f1 - floor ?f2 - floor )
  :precondition (and (lift-at ?lift ?f1) (above ?f2 ?f1 ) (reachable-floor ?lift ?f2) )
  :effect (and (lift-at ?lift ?f2) (not (lift-at ?lift ?f1))))

(:action move-up-fast
  :parameters (?lift - fast-elevator ?f1 - floor ?f2 - floor )
  :precondition (and (lift-at ?lift ?f1) (above ?f1 ?f2 ) (reachable-floor ?lift ?f2) )
  :effect (and (lift-at ?lift ?f2) (not (lift-at ?lift ?f1))))

(:action move-down-fast
  :parameters (?lift - fast-elevator ?f1 - floor ?f2 - floor )
  :precondition (and (lift-at ?lift ?f1) (above ?f2 ?f1 ) (reachable-floor ?lift ?f2) )
  :effect (and (lift-at ?lift ?f2) (not (lift-at ?lift ?f1))))

(:action board
  :parameters (?p - passenger ?lift - elevator ?f - floor)
  :precondition (and  (lift-at ?lift ?f) (passenger-at ?p ?f))
  :effect (and (not (passenger-at ?p ?f)) (boarded ?p ?lift)))

(:action leave 
  :parameters (?p - passenger ?lift - elevator ?f - floor)
  :precondition (and  (lift-at ?lift ?f) (boarded ?p ?lift) )
  :effect (and (passenger-at ?p ?f) (not (boarded ?p ?lift))))
  
)
