-module(etap_t_009).

-export([start/0]).

start() ->
    etap:plan(2),
    Body = "This is a test.",
    etap_string:contains_ok(Body, "test", "Proving contains_ok/3."),
    etap_string:is_before(Body, "is", "a test", "Proving is_before/4"),
    etap:end_tests().
