-module (facto_test).

-include_lib ("eunit/include/eunit.hrl").

facto_test () ->
    ?assertEqual (1, 1),
    ?assertEqual (1, facto:fact (1)),
    ?assertEqual (2, facto:fact (2)),
    ?assertEqual (5*4*3*2*1, facto:fact (5)).

