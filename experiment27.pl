% --- Database (Facts) ---
% Format: person(Name, dob(Day, Month, Year)).
person(john, dob(15, may, 1998)).
person(mary, dob(22, august, 2001)).
person(alex, dob(5, december, 1995)).
person(lisa, dob(30, may, 2001)).

% --- Rule to query by year ---
% This says: "A Name matches a Year if that person has a dob with that Year."
% We use underscores (_) for Day and Month because we don't care about them here.
born_in_year(Name, Year) :-
    person(Name, dob(_, _, Year)).
