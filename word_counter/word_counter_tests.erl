-module(word_counter_tests).
-include_lib("eunit/include/eunit.hrl").

counter_test() ->
  ?assertEqual(0, word_counter:counter("")),
  ?assertEqual(1, word_counter:counter("Single_Word")),
  ?assertEqual(3, word_counter:counter("This is Sparta")),
  ?assertEqual(3, word_counter:counter(" This  is Sparta ")).
