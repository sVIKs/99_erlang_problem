-module(p25).
-export([rnd_permu/1]).

rnd_permu(List) -> 
  random:seed(now()),
	rnd_permu(List,List,random:uniform(length(List)))
.

rnd_permu([H],[H],1) -> 
	[H]
;
rnd_permu(List,[H|_T],1) -> 
	L=lists:delete(H,List),
	[H | rnd_permu(L,L,random:uniform(length(L)))]
;
rnd_permu(List,[_H|T],Num) -> 
	rnd_permu(List,T,Num-1)
.
