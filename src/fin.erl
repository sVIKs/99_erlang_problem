-module(fin).
-compile(export_all).

last_1(List) -> last_1(List, []).
last_1([], Last) -> Last;
last_1([H | T], _Last) -> last_1(T, H).

last_2([H|[]])-> H;
last_2([_|T])-> last_2(T).


but_last_1([_|T=[_,_|_]]) -> but_last_1(T);
but_last_1(B = [_,_|[]]) -> B.


but_last_2(List) -> but_last_2(List, [], []).
but_last_2([], A, B) -> [A, B];
but_last_2([H | T], _A, B) -> but_last_2(T, B, H).


element_at_1(List, Num) -> element_at_1(List, Num, 1).
element_at_1([], _, _) -> undefined;
element_at_1([H | _T], Num, Num) -> H;
element_at_1([_H | T], Num, I) -> element_at_1(T, Num, I+1).
	

element_at_2([], _) -> undefined;
element_at_2([H | _T], 1) -> H;
element_at_2([_H | T], Num) -> element_at_2(T, Num - 1).


reverse(List) -> reverse(List, []).
reverse([], Reverse_List) -> Reverse_List;
reverse([H | T], Reverse_List) -> reverse(T, [H | Reverse_List]).




%flatten([H | []]) -> io:format("1 flatten([~w | []]) ~n",[H]), flatten(H);
%flatten([H | T]) -> io:format("2 flatten([~w | ~w])~n",[H, T]), [H | flatten(T)];
%flatten(List) -> io:format("3 flatten(~w)~n",[List]),List.


flatten(List) -> flatten(List, []).
flatten([], List) -> List;
flatten([H | T], List) ->  flatten(H, flatten(T,List));
flatten(H, List) ->  [H | List].


%but_last_1([_|T=[_,_|_]]) -> but_last_1(T);
%but_last_1(B = [_,_|[]]) -> B.

flatten_2([[H | T1] | T2]) -> flatten_2([H, T1 | T2]);
flatten_2([[] | T]) -> flatten_2(T);
flatten_2([H | T]) -> [H | flatten_2(T)];
flatten_2([]) -> [].




compress([H,H | T]) -> compress([H |T]);
compress([H | []]) -> [H];
compress([H | T]) -> [H | compress(T)].






pack(List) -> pack(List, []).
pack([], _) -> [];
pack([H, H | T], L) -> pack([H | T], [H | L]);
pack([H | T], L) -> [[H | L] |  pack(T,[] )].


encode(List) -> encode(List, 1).
encode([], _) -> [];
encode([H, H | T], Num) -> encode([H | T], Num + 1);
encode([H | T], Num) -> [{Num, H} | encode(T, 1)].


encodemodified(List) -> encodemodified(List, 1).
encodemodified([], _) -> [];
encodemodified([H, H | T], Num) -> encodemodified([H | T], Num + 1);
encodemodified([H | T], 1) -> [ H | encode(T, 1)];
encodemodified([H | T], Num) -> [{Num, H} | encodemodified(T, 1)].



%decodemodified(Encode) -> decodemodified(Encode, [], [], 0).
%decodemodified([], List, _, 0) -> List;
%decodemodified([{Num, Char} | T], List, _, 0) ->  decodemodified(T, List,  Char, Num);
%decodemodified([H | T], List, _, 0) ->  decodemodified(T, List, H, 1);
%decodemodified(Encode, List, Char, Num) -> decodemodified(Encode, List ++ [Char],  Char, Num -1).



decode([]) -> [];
decode([{0, Str} | T]) -> decode(T);
decode([{Num, Str} | T]) -> [Str | decode([{Num-1, Str} | T])].


duplicate([]) -> [];
duplicate([H | T]) -> [H,H | duplicate(T)].


replicate(List, Num) -> replicate(List, Num, Num).
replicate([_H | T], Num, 0) -> replicate(T, Num, Num);
replicate([H | T], Num, N) -> [H | replicate([H | T], Num, N-1)];
replicate([],_,_) -> [].


len(List) -> len(List, 0).
len([H | T], Num) -> len(T, Num+1);
len([],Num) -> Num.

%pack([H, H | T]) -> [H | pack([H | T])];
%pack([H | []]) -> [H];
%pack([H | T]) -> [H , pack(T)].


%pack([H, H | T]) -> [H | pack([H | T])];
%pack([H | []]) -> [H];
%pack([H | T]) -> [H , pack(T)].


is_palindrome(List) -> is_palindrome(List, List, []).
is_palindrome([H1|T1], [], [H1|T2]) -> is_palindrome(T1, [], T2);
is_palindrome(List, [H | T], ReversList) -> is_palindrome(List, T, [H | ReversList]);
is_palindrome([], [], []) -> true;
is_palindrome(_, [], _) -> false.


check(Num) -> 
	List=lists:seq(0, 1000000), 
	check(Num, gen(Num)). 

check(0, _List) -> [];
check(Num, List) -> 
	Rnd = random:uniform(1000000),
	{Last_1, _} = timer:tc(fin, flatten, [List]),
	{Last_2, _} = timer:tc(fin, flatten_2, [List]),
	io:format("~w,~w ~n", [Last_1, Last_2]),
	check(Num - 1, List).

gen(Num) -> gen([],Num*1000).
gen(List,0) -> List;
gen(List,Num) -> 
	gen([List, [random:uniform(1000000)]],Num - 1).

	
