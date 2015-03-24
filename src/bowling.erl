-module (bowling).

-export ([score/1]).

score ([]) -> 0;

score ([R1, R2, B]) when R1+R2=:=10 -> R1 + R2 + B;
score ([R1, R2, B | Other]) when R1+R2=:=10 -> R1 + R2 + B + score([B | Other]);

score ([10, T1, T2]) -> 10 + T1 + T2;
score ([10, T1, T2 | Other]) -> 10 + T1 + T2 + score ([T1,T2|Other]);

score ([H|T]) -> H + score(T).
