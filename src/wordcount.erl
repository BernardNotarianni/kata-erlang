-module (wordcount).
-export ([wordcount/1]).
-export ([file/1]).

file (FileName) ->
    Lines = read_file: all (FileName),
    wordcount (Lines).

wordcount (L) ->
    wordcount (L, dict:new()).

wordcount ([],D)->
    D;
wordcount (L, D) ->
    Words = string:tokens(hd(L), " "),
    D2 = subwordcount (Words, D),
    wordcount(tl(L),D2).



subwordcount ([], D) ->
    D;
subwordcount(L, D) ->
    Word = hd(L),
    N = case dict: find (Word, D) of
            {ok, CurrentCount} -> CurrentCount;
            error -> 0
        end,
    D2 = dict:store(Word, N+1, D),
    subwordcount (tl(L), D2).
