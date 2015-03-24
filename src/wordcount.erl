-module(wordcount).
-export([wordcount/1]).

wordcount(String) ->
    L = string:tokens(String, " "),
    wordcount (L, dict: new()).

wordcount ([], D) ->
    D;
wordcount(L, D) ->
    Word = hd(L),
    N = case dict: find (Word, D) of
            {ok, CurrentCount} -> CurrentCount;
            error -> 0
        end,
    D2 = dict:store(Word, N+1, D),
    wordcount (tl(L), D2).
