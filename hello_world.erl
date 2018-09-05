-module(hello_world).

-export([hello/0, hello/1, tambah/2, kurang/2, total/1, main/1]).

hello() ->
    io:format("Hallo semua !!! ~n").

hello(X) ->
    io:format("Hai, ~s. Apa kabar mu ? ~n", [X]).

tambah(X, Y) ->
    X + Y.

kurang(X, Y) ->
    X - Y.

total([]) ->
    0;

total([H|T]) ->
    H + total(T).

main(_) ->
    hello(),
    hello("ARM"),
    io:format("Eksekusi tambah(1,2), hasilnya adalah ~w~n", [tambah(1,2)]),
    io:format("Eksekusi kurang(10,5), hasilnya adalah ~w~n", [kurang(10,5)]),
    io:format("Eksekusi total([]), hasilnya adalah ~w~n", [total([])]),
    io:format("Eksekusi total([1,2,3,4]), hasilnya adalah ~w~n", [total([1,2,3,4])]).
