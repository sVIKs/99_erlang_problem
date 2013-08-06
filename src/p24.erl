-module(p24).
-export([lotto_select/2]).


lotto_select(0,_NumS) -> [];
lotto_select(NumL,NumS) ->[random:uniform(NumS) | lotto_select(NumL-1,NumS)].
