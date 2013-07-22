-module(p15).
-export([replicate/1]).

replicate(List, Num) -> replicate(List, Num, Num).
replicate([_H | T], Num, 0) -> replicate(T, Num, Num);
replicate([H | T], Num, N) -> [H | replicate([H | T], Num, N-1)];
replicate([],_,_) -> [].
