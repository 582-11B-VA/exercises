# Exercise: Composition

For this assignment, your task is to write a program to plan the
construction of a rectangular wooden deck. Specifically, you must
implement a function named `calc-balance` that computes the difference
between the **available budget** and the **total cost** of the project.
Here are the arguments your function will receive:

- the deck's length and width in meters,
- the current price of a wooden plank in dollars,
- the worker's hourly wage in dollars, and
- the available budget in dollars.

Each wooden plank measures 2 meters long by 0.2 meters wide. For each
plank, you'll need 4 screws (at 50 cents each) and 2 metal brackets (at
$5 each). Finally, a worker can install 5 square meters of decking per
hour.

Of course, you can't buy a fraction of a wooden plank. If you need 2.5
planks, you must buy 3.
