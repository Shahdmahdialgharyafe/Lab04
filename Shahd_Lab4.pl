% ============================================================
%  ARTI 303 - Lab 4  |  Variables in Prolog
%  The family facts used throughout this lab.
% ============================================================

male(ali).
male(ahmad).
male(muhammad).
male(faisal).
male(hassan).
male(khan).

female(sara).
female(nora).

parent(ali, ahmad).
parent(ali, muhammad).
parent(ahmad, sara).
parent(ahmad, nora).
parent(ahmad, khan).
parent(muhammad, faisal).
parent(faisal, hassan).

% ============================================================
%  TASK 2 - queries and Prolog's answers
% ============================================================

% 1. The names of all females
% ?- female(X).
% X = sara ;
% X = nora.

% 2. Whether there is any male
% ?- male(_).
% true.
% (The anonymous variable _ asks "is there at least one male?")

% 3. The grandparent of Faisal
% ?- parent(G, P), parent(P, faisal).
% G = ali,
% P = muhammad.
% (G is a parent of P, and P is a parent of faisal)

% 4. All daughters of Ahmad
% ?- parent(ahmad, X), female(X).
% X = sara ;
% X = nora.
% (children of ahmad who are female)

% 5. Whether Ahmad and Muhammad have a common parent
% ?- parent(P, ahmad), parent(P, muhammad).
% P = ali.
% (the same P must be a parent of both)

% 6. Whether Khan is the brother of Nora
% ?- male(khan), parent(P, khan), parent(P, nora).
% P = ahmad.
% (khan is male and shares the parent ahmad with nora, so yes)
