-module(word_counter).
-compile(export_all).

counter(L) -> counter(string:tokens(L, " "),0).
counter([],Acc) -> Acc;
counter([_|T], Acc) -> counter(T, Acc+1).
