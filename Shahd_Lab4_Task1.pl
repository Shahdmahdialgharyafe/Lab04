% ============================================================
%  ARTI 303 - Lab 5  |  Task 1: Unification
%  Queries, Prolog results, and explanations.
% ============================================================

% ?- house = house.
% true.
% Explanation: Both sides are the same atom, so they unify.

% ?- house = abc.
% false.
% Explanation: house and abc are two different atoms (constants).
% A constant can only unify with itself, so it fails.

% ?- edge(a,b) = edge(C,b).
% C = a.
% Explanation: Same functor (edge) and same arity (2).
% The variable C unifies with a, and b = b already matches.

% ?- edge(a,d) = edge(C,B).
% C = a,
% B = d.
% Explanation: Same functor and arity. Each variable takes the
% value in the matching position: C = a and B = d.

% ?- edge(C,B) = edge(a,d).
% C = a,
% B = d.
% Explanation: Unification is symmetric, so swapping the sides
% gives the same result as the previous query.

% ?- edge(A,f(g,h)) = edge(a,B).
% A = a,
% B = f(g,h).
% Explanation: A unifies with the atom a, and B unifies with the
% whole compound term f(g,h). A variable can hold any term.

% ?- edge(A,A) = edge(b,c).
% false.
% Explanation: The first argument binds A to b. The second argument
% then requires A = c, but A is already b and b does not equal c.
% A variable cannot hold two different values, so it fails.

% ?- edge(A,A) = edge(b,b).
% A = b.
% Explanation: A binds to b in the first argument, and the second
% argument is also b, so everything is consistent and it succeeds.

% ?- A = B, B = f.
% A = B, B = f.
% Explanation: A = B makes the two variables share the same value.
% Then B = f binds B to f, so A is also f.

% ?- A = B, B = f, A = e.
% false.
% Explanation: After the first two goals, A and B are both f.
% The last goal needs A = e, but f and e are different atoms,
% so the whole query fails.
