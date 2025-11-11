# Exercise: Booleans

In programming, an operation that produces a boolean value is called a
**predicate**. By convention, the names of predicates are prefixed with
"is", "can" or "has". For instance, a function that determines if a
person can drive would be named `can-drive`. Similarly, a binding whose
value represent if a person is old enough would be named
`is-old-enough`.

For this assignment, your task is to implement the `can-drive` function.
When called, it will receive the person's visual acuity score, their
age, whether or not they have a driving license, and whether or not they
have a learner's permit. A person can drive if they are at least 16
years old _and_ their visual acuity score is greater than 6/15 _and_
they have a driving license _or_ a learner's permit.
