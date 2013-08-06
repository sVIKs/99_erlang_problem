-module(p16).
-export([drop/2]).

drop([_H | T], 1) -> T;
drop([H | T], Num) -> [H | drop(T,Num-1)].
