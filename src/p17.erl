-module(p17).
-export([split/2]).

split(List, Num) -> split(List,Num,[]).
split(List1,0,List2) -> [reverse(List2) , List1];
split([H | T],Num,List1) -> split(T,Num-1,[H|List1]).

reverse(List) -> reverse(List, []).
reverse([], Reverse_List) -> Reverse_List;
reverse([H | T], Reverse_List) -> reverse(T, [H | Reverse_List]).
