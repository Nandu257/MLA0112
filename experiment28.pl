% --- Database (Facts) ---
% Format: teaches(Teacher, SubjectCode).
teaches(prof_smith, cs101).
teaches(dr_jones, math202).
teaches(prof_davis, ph103).

% Format: enrolled(Student, SubjectCode).
enrolled(alex, cs101).
enrolled(lisa, math202).
enrolled(john, cs101).
enrolled(mary, ph103).

% --- Relationship Rule ---
% A Student has a Teacher for a SubjectCode IF:
% 1. The Student is enrolled in that SubjectCode.
% 2. AND that Teacher teaches that same SubjectCode.
student_teacher_subject(Student, Teacher, SubjectCode) :-
    enrolled(Student, SubjectCode),
    teaches(Teacher, SubjectCode).
