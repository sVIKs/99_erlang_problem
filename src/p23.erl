-module(p23).
-export([rnd_select/2]).

rnd_select(List,Num) -> random:seed(now()), rnd_select(List,List,Num,random:uniform(length(List))).

rnd_select(_List1,[H | _T],1,1) -> [H];
rnd_select(List,[H|_T],Num,1) -> [ H | rnd_select(List,List,Num-1,random:uniform(length(List)))];
rnd_select(List,[_H|T],Num1,Num2) -> rnd_select(List,T,Num1,Num2-1).
