%%%-------------------------------------------------------------------
%%% @author {{author_name}} <{{author_email}}>
%%% @copyright {{copyright_year}} (c) {{author_name}}
%%%
%%% @doc {{name}} main application
%%% @end
%%%-------------------------------------------------------------------
-module({{name}}_app).
-behaviour(application).
-export([start/2, stop/1]).

%%--------------------------------------------------------------------
%% @doc start/2
%% @end
%%--------------------------------------------------------------------
-spec start(StartType, StartArgs) -> Return when
      StartType :: application:start_type(),
      StartArgs :: term(),
      Return :: pid().
start(_StartType, _StartArgs) ->
    {{name}}_sup:start_link().

%%--------------------------------------------------------------------
%% @doc stop/1
%% @end
%%--------------------------------------------------------------------
-spec stop(State) -> Return when
      State :: term(),
      Return :: ok.
stop(_State) ->
    ok.
