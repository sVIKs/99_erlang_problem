-module(p19).
-export([rotate/2]).

rotate(List, Num) -> rotate(List,Num,[],[]).
rotate([],0,[],List)->List;
rotate([],0,[H|T],List)->rotate([],0,T,[H | List]);
rotate([H|T],0,List,[])->[H | rotate(T,0,List,[])];
rotate([H|T],Num,List,[])->rotate(T,Num-1,[H | List],[]).
