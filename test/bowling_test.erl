-module(bowling_test).

-include_lib ("eunit/include/eunit.hrl").

score_is_total_pin_test () ->
    ?assertEqual (20, bowling: score ([1,1,1,1,1, 1,1,1,1,1, 1,1,1,1,1, 1,1,1,1,1])).

strike_give_bonus_of_two_next_rolls_test ()->
    ?assertEqual (30, bowling: score ([10, 1,1,1, 1,1,1,1,1, 1,1,1,1,1, 1,1,1,1,1])).

spare_give_bonus_of_the_next_roll_test ()->
    ?assertEqual (29, bowling: score ([7,3,1,1,1, 1,1,1,1,1, 1,1,1,1,1, 1,1,1,1,1])).

strike_at_end_give_bonus_of_two_next_rolls_test ()->
    ?assertEqual (30, bowling: score ([1,1,1,1,1, 1,1,1,1,1, 1,1,1,1,1, 1,1,1,10 ,1,1])).

spare_at_end_give_bonus_of_the_next_roll_test ()->
    ?assertEqual (29, bowling: score ([1,1,1,1,1, 1,1,1,1,1, 1,1,1,1,1, 1,1,1,7,3 ,1])).
