-module(process).

-export([start/0, process_tambah/0]).

start() ->
    Tambah = spawn(?MODULE, process_tambah, []),
    register(tambah, Tambah).

process_tambah() ->
    receive
        die ->
            io:format("Goodbye cruel world !!!!! ~n");
        {X,Y, Sender} ->
            Hasil = hello_world:tambah(X, Y),
            Sender ! {X, Y, Hasil},
            process_tambah();
        _ ->
            io:format("Format pesan tidak diketahui ~n"),
            process_tambah()
     end.
