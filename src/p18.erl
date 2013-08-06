-module(p18).
-export([slice/3]).

slice(_List,0,0)-> [];
slice([H|T],0,NumE) -> [H | slice(T,0,NumE-1)];
slice([_H|T],NumS,NumE) -> slice(T,NumS-1,NumE-1).
