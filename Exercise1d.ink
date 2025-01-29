/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR shrimp = 0
VAR icecream = -1
-> seashore

== seashore ==
You are sitting on the beach. 

It is {  advance_time() }
Your ice cream is { ice_cream() }


+ [Stroll down the beach] -> beach2
+ {time == 2}[Go into the water] -> ocean
-> DONE

== beach2 ==
This is further down the beach.

It is { advance_time() }
Your ice cream is { ice_cream() }
+ { time == 1 } [Pick up some shells] -> shells
+ [Stroll back up the beach] -> seashore

== shells ==
You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    ~ return time
    
== ocean == 
You are now in the water.
+[Search for Shrimp] -> shrimp_find

== shrimp_find ==
~ shrimp = shrimp + 1
You found a shrimp!
+[Stroll back to the beach] -> beach2
    
    
    

== function ice_cream ==
    
    ~ icecream = icecream + 1

    {
        - icecream > 2:
            ~ icecream = 0
    }
    
    {    
        - icecream == 0:
            ~ return "Perfect"
        
        - icecream == 1:
            ~ return "Melty"
        
        - icecream == 2:
            ~ return "Melted :("
    
    }





