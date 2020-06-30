%%%-------------------------------------------------------------------
%%% @author {{author_name}} <{{author_email}}>
%%% @copyright {{copyright_year}} (c) {{author_name}}
%%%
%%% @doc
%%% @end
%%%-------------------------------------------------------------------
-module({{name}}_sup).
-behaviour(supervisor).
-export([start_link/0, start_link/1, start_link/2]).
-export([init/1]).

%%--------------------------------------------------------------------
%% @doc start_link/0
%% @end
%%--------------------------------------------------------------------
-spec start_link() -> Return when
      Return :: supervisor:startlink_ret() |
                supervisor:startlink_err().
start_link() ->
    start_link([]).

%%--------------------------------------------------------------------
%% @doc start_link/1
%% @end
%%--------------------------------------------------------------------
-spec start_link(Args) -> Return when
      Args :: term(),
      Return :: supervisor:startlink_ret() |
                supervisor:startlink_err().
start_link(Args) ->
    start_link(?MODULE, Args).

%%--------------------------------------------------------------------
%% @doc start_link/2
%% @end
%%--------------------------------------------------------------------
-spec start_link(Name, Args) -> Return when
      Name :: atom(),
      Args :: term(),
      Return :: supervisor:startlink_ret() |
                supervisor:startlink_err().
start_link(Name, Args) ->
    supervisor:start_link({local, Name}, ?MODULE, Args).

%%--------------------------------------------------------------------
%% @doc init/1
%% @end
%%--------------------------------------------------------------------
-spec init(Args) -> Return when
      Args :: term(),
      Return :: {ok, {supervisor:sup_flags()
                     ,supervisor:child_spec()}} | 
                ignore.
init(_Args) ->
    SupervisorFlags = #{},
    ChildSpecs = [],
    {ok, {SupervisorFlags, ChildSpecs}}.
