delete(File) :- 
    move(File, kor),
    size(File, large).
store(File, Dir) :-
    move(File, Dir),
    Dir \= kor.
store(File, kor):- 
    move(File, kor), 
    size(File, small).

size(script, small).
size(video, large).
size(text, small).
move(script, kor).
move(video, kor).
move(text, docs).