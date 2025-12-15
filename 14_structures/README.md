# Exercise: Structures

The company you work for is developing a game in which the player must
fight aliens. One of your colleagues has asked you to implement the
functions listed below. But before doing so, you must first define the
data structure that will be used to represent an alien in your program.
An alien has an x coordinate, a y coordinate, and a number of hit
points.

1. A function named `is-alive` that determines whether a given alien is
   alive. An alien is alive if its number of hit points is greater
   than 0.

2. A function named `hit` that removes one hit point from a given alien
   and returns an updated version of the alien. Naturally, an alien that
   is not alive should not lose any hit points.

3. A function named `teleport` that moves an alien to the given x and y
   coordinates. The function returns an updated version of the alien.

4. A function named `are-colliding` that determines whether two aliens
   are colliding. Two aliens are considered to be colliding if they have
   the same coordinates.

5. A function named `move` that moves an alien in a given direction. The
   direction can be `"up"`, `"down"`, `"left"`, or `"right"`. To move
   the alien, you add or subtract 1 from its x or y coordinate. Thus,
   you add 1 to the x coordinate to move it to the right, and subtract 1
   from the y coordinate to move it upward.

Once the program is complete, your colleague reviews your code and
suggests grouping the x and y coordinates into a separate structure
named `Position`. An alien will therefore have two fields: its position
and its number of hit points. Update the functions accordingly.
