
-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not take_torch: There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel!] -> east_tunnel
+ [Take the west tunnel!] -> west_tunnel
* [Woah, gimme that torch!] -> take_torch

== east_tunnel ==
It's so dark! You can't see a thing.
+ {take_torch} [I ignite my torch of unspecified variety!] -> east_tunnel_lit
+ [I wanna go back!] -> cave_mouth
-> END

== west_tunnel ==
The tunnel is narrow and dark. It twists and turns so much that you can't tell if you're still going west. In the distance you hear unusual sounds... Something is scraping on the walls of the cave up ahead.
+ [Yikes! Turn around!] -> cave_mouth
+ [Go deeper!] -> wolfs_den
-> END

== take_torch ==
You snatched the torch from the ground. You are unsure if it is a convenient and easy-to-use electric torch or a good-old-fashioned, coal-burning torch because the narrator chose to withhold that information from you. Anyways, where were we?
* [Now I'm prepared to explore the cave!] -> cave_mouth
-> END

== east_tunnel_lit ==
The flickering light of your torch illuminates the sparkling, shiny forms of hundrends of wet stalagmites and stalactites. They take the shape of elongated cones banded with convex and concave ridges. These cones, a result of a simple, natural process seem somehow alien. It feels unusual to see natural stone that looks so smooth and soft. /*The tunnel continues to the east between the strange, glimmering cones*/
{broken_stalagmite and not take_stalagmite: On the ground lies a piece of a stalagmite.}
+ [I extenguish my torch!] -> east_tunnel
+ [Now I wanna go back!] -> cave_mouth
+ {not broken_stalagmite} [Attack!] -> attack_stalagmite
+ {broken_stalagmite and not take_stalagmite} [I want that stalagmite!] -> take_stalagmite
-> END

== attack_stalagmite ==
Huh? What are you talking about? Do you want to attack a stalagmite?
+ [Sure! I kick a thin stalagmite!] -> broken_stalagmite
+ [Never mind, I was just kidding!] -> east_tunnel_lit
-> END

== broken_stalagmite ==
The stalagmite snaps and falls to the ground. Nice job.
+ [Thank you!] -> east_tunnel_lit
-> END

== take_stalagmite ==
You hold the broken stalagmite in your hand. It feels rougher than it looks...and heavier too. I'm really not sure what you're planning to do with this awkward thing.
+ [Sweet! I always wanted one!] -> east_tunnel_lit
-> END

== wolfs_den ==
The passage widens and you find yourself in a larger cavern. The source of the sounds reveals itself to you. At the opposite side of the room, a wolf is treading slowly towards you. Because you have intruded in its home, it has decided to greet you with a terrifying snarl and then eat you.
+ [Run!] -> retreat
+ [Fight!] -> battle
-> END

== retreat ==
You retreat to the exit of the cave and hide. After a while, the wolf returns to its den. Consider yourself lucky.
+ [That was scary!] -> cave_mouth
-> END

== battle ==
Seriously?? Well, good luck...
+ [Attack with fists!] -> punch_wolf
+ {take_torch} [Attack with torch!] -> throw_electric_torch
+ {take_stalagmite} [Attack with stalagmite!] -> use_stalagmite
-> END

== punch_wolf ==
That doesn't end well. You try to punch the wolf, but it {use_stalagmite:recovers from the blow of the stalagmite and bites you after you get a punch in.|bites you first.} You die in moments.
-> restart

== throw_electric_torch ==
The torch bounces off the wolf with no effect. Is now a good time to reveal that the torch is just a small electric flashlight? No? Sorry about that. Anyways, the wolf tears you to bits and you die.
-> restart

== throw_flame_torch ==
You ignite your torch and hurl it the wolf. I can now reveal that the torch is (fortunately) of the good-old-fashioned, coal-burning variety. The flame of the torch burns the wolf, who panics and darts behind you, and then runs out of the cave.
+ [Booyah! Just like I planned!] -> safe_wolfs_den
-> END

== use_stalagmite ==
You hurl the pointy end of the stalagmite into the wolf's eye, stunning it! ...Now what?
+ [Attack with fists!] -> punch_wolf
+ {take_torch} [Attack with torch!] -> throw_flame_torch
-> END

== restart ==
Try again!
-> END

== safe_wolfs_den ==
Now the wolf's den is safe. You look around and find...nothing. Why did you even come here?? Are you crazy?
+ [Yes.] I knew it. -> END
-> END

