/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not take_torch:There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Woah, gimme dat torch!] -> take_torch

== east_tunnel ==
It's so dark! You can't see a thing.
+ {take_torch} [I ignite my torch of unspecified variety!] -> east_tunnel_lit
+ [I wanna go back!] -> cave_mouth
-> END

== west_tunnel ==
Dead end :(
+ [Fooey! Turn around!] -> cave_mouth
-> END

== take_torch ==
You snatched the torch from the ground. You are unsure if it is a convenient and easy-to-use electric torch or a good-old-fashioned, coal-burning torch because the narrator choose to withhold that information from you. Anyways, where were we?
* [Now we're prepared to explore the tunnel!] -> cave_mouth
-> END

== east_tunnel_lit ==
    The flickering light of your torch illuminates the sparkling, shiny forms of hundrends of wet stalagmites and stalagtites. They take the shape of elongated cones banded with convex and concave ridges. These cones, a result of a simple, natural process seem somehow alien. It feels unusual to see natural stone that looks so smooth and soft. The tunnel continues to the east between the strange, glimmering cones.
-> END