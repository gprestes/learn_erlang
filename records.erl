-module(records).
-compile(export_all).
-include("records.hrl").

-record(user, {id, name, group, age}).
-record(robot, {name,
               type=industrial,
               hobbies,
               details=[]}).

admin_panel(#user{name=Name, group=admin}) ->
  Name ++ " is allowed!";
admin_panel(#user{name=Name}) ->
  Name ++ " is not allowed!".

adult_section(U = #user{}) when U#user.age >= 18 ->
  allowed;
adult_section(_) ->
  forbidden.

repairman(Rob) ->
  Details = Rob#robot.details,
  NewRob  = Rob#robot{details=["Repaired by repairman"|Details]},
  {repaired, NewRob}.

first_robot() ->
  #robot{name="Mecatron",
        type=handmade,
        details=["Moved by a small man inside"]}.

car_factory(CorpName) ->
  #robot{name=CorpName, hobbies="building cars"}.

included() -> #included{some_field="Some value"}.
