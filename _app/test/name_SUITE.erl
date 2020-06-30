%%%-------------------------------------------------------------------
%%% @author {{ author_name }} <{{ author_mail}}>
%%% @copyright {{ copyright_year}} (c) {{ author_name }}
%%%
%%% @doc
%%% @end
%%%-------------------------------------------------------------------
-module({{ name }}_SUITE).
-compile(export_all).
-include_lib("common_test/include/ct.hrl").

%%--------------------------------------------------------------------
%% @doc
%% @end
%%--------------------------------------------------------------------
-spec suite() -> Info when
      Info = [tuple()]
suite() ->
    [{timetrap,{seconds,30}}].

%%--------------------------------------------------------------------
%% @doc
%% @end
%%--------------------------------------------------------------------
-spec init_per_suite(Config0) -> Return when
      Config0 = Config1 = [tuple()],
      Reason = term(),
      Return = Config1 | {skip,Reason} | {skip_and_save,Reason,Config1}.
init_per_suite(Config) ->
    Config.

%%--------------------------------------------------------------------
%% @doc 
%% @end
%%--------------------------------------------------------------------
-spec end_per_suite(Config0) -> Return when
      Config0 = Config1 = [tuple()],
      Return = term() | {save_config,Config1}.
end_per_suite(_Config) ->
    ok.

%%--------------------------------------------------------------------
%% @doc
%% @end
%%--------------------------------------------------------------------
-spec init_per_group(GroupName, Config0) -> Return when
      GroupName = atom(),
      Config0 = Config1 = [tuple()],
      Reason = term(),
      Return = Config1 | {skip,Reason} | {skip_and_save,Reason,Config1}
init_per_group(_GroupName, Config) ->
    Config.

%%--------------------------------------------------------------------
%% @doc
%% @end
%%--------------------------------------------------------------------
-spec end_per_group(GroupName, Config0) -> Return when
      GroupName = atom(),
      Config0 = Config1 = [tuple()],
      Return = term() | {save_config,Config1}.
end_per_group(_GroupName, _Config) ->
    ok.

%%--------------------------------------------------------------------
%% @doc
%% @end
%%--------------------------------------------------------------------
-spec init_per_testcase(TestCase, Config0) -> Return when
      TestCase = atom(),
      Config0 = Config1 = [tuple()],
      Reason = term(),
      Return = Config1 | {skip,Reason} | {skip_and_save,Reason,Config1}.
init_per_testcase(_TestCase, Config) ->
    Config.

%%--------------------------------------------------------------------
%% @doc
%% @end
%%--------------------------------------------------------------------
-spec end_per_testcase(TestCase, Config0) -> Return when
      TestCase = atom(),
      Config0 = Config1 = [tuple()],
      Reason = term(),
      Return = term() | {save_config,Config1} | {fail,Reason}.
end_per_testcase(_TestCase, _Config) ->
    ok.

%%--------------------------------------------------------------------
%% @doc
%% @end
%%--------------------------------------------------------------------
-spec groups() -> Return when       
      Group = {GroupName,Properties,GroupsAndTestCases},
      GroupName = atom(),
      Properties = [parallel | sequence | Shuffle | {RepeatType,N}],
      GroupsAndTestCases = [Group | {group,GroupName} | TestCase],
      TestCase = atom(),
      Shuffle = shuffle | {shuffle,{integer(),integer(),integer()}},
      RepeatType = repeat | repeat_until_all_ok | repeat_until_all_fail |
      repeat_until_any_ok | repeat_until_any_fail
      N = integer() | forever,
      Return = [Group].
groups() ->
    [].

%%--------------------------------------------------------------------
%% @doc
%% @end
%%--------------------------------------------------------------------
-spec all() -> Return when 
      GroupsAndTestCases = [{group,GroupName} | TestCase],
      GroupName = atom(),
      TestCase = atom(),
      Reason = term(),
      Return = GroupsAndTestCases | {skip,Reason}.
all() -> 
    [my_test_case].

%%--------------------------------------------------------------------
%% @doc
%% @end
%%--------------------------------------------------------------------
-spec TestCase() -> Return when
      Return = [tuple()].
my_test_case() -> 
    [].

%%--------------------------------------------------------------------
%% @doc
%% @end
%%--------------------------------------------------------------------
-spec my_test_case(Config0) -> Return when
      Config0 = Config1 = [tuple()],
      Reason = term(),
      Comment = term(),
      Return = ok | exit() | {skip,Reason} | {comment,Comment} |
      {save_config,Config1} | {skip_and_save,Reason,Config1}.
my_test_case(_Config) -> 
    ok.

