-module(wordcount_test).

-include_lib ("eunit/include/eunit.hrl").

wordcount_test () ->
    ?assertEqual ({ok, 1}, dict: find ("Hello", wordcount:wordcount("Hello World"))),
    ?assertEqual ({ok, 2}, dict: find ("Hello", wordcount:wordcount("Hello World Hello"))).
