-module(lustre@event).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([emit/2, on/2, on_click/1, on_mouse_down/1, on_mouse_up/1, on_mouse_enter/1, on_mouse_leave/1, on_mouse_over/1, on_mouse_out/1, on_keypress/1, on_keydown/1, on_keyup/1, on_focus/1, on_blur/1, value/1, on_input/1, checked/1, on_check/1, mouse_position/1, prevent_default/1, on_submit/1, stop_propagation/1]).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 22).
-spec emit(binary(), gleam@json:json()) -> lustre@effect:effect(any()).
emit(Event, Data) ->
    lustre@effect:event(Event, Data).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 36).
-spec on(
    binary(),
    fun((gleam@dynamic:dynamic_()) -> {ok, STE} |
        {error, list(gleam@dynamic:decode_error())})
) -> lustre@internals@vdom:attribute(STE).
on(Name, Handler) ->
    lustre@attribute:on(Name, Handler).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 43).
-spec on_click(STH) -> lustre@internals@vdom:attribute(STH).
on_click(Msg) ->
    on(<<"click"/utf8>>, fun(_) -> {ok, Msg} end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 49).
-spec on_mouse_down(STJ) -> lustre@internals@vdom:attribute(STJ).
on_mouse_down(Msg) ->
    on(<<"mousedown"/utf8>>, fun(_) -> {ok, Msg} end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 55).
-spec on_mouse_up(STL) -> lustre@internals@vdom:attribute(STL).
on_mouse_up(Msg) ->
    on(<<"mouseup"/utf8>>, fun(_) -> {ok, Msg} end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 61).
-spec on_mouse_enter(STN) -> lustre@internals@vdom:attribute(STN).
on_mouse_enter(Msg) ->
    on(<<"mouseenter"/utf8>>, fun(_) -> {ok, Msg} end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 67).
-spec on_mouse_leave(STP) -> lustre@internals@vdom:attribute(STP).
on_mouse_leave(Msg) ->
    on(<<"mouseleave"/utf8>>, fun(_) -> {ok, Msg} end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 73).
-spec on_mouse_over(STR) -> lustre@internals@vdom:attribute(STR).
on_mouse_over(Msg) ->
    on(<<"mouseover"/utf8>>, fun(_) -> {ok, Msg} end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 79).
-spec on_mouse_out(STT) -> lustre@internals@vdom:attribute(STT).
on_mouse_out(Msg) ->
    on(<<"mouseout"/utf8>>, fun(_) -> {ok, Msg} end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 89).
-spec on_keypress(fun((binary()) -> STV)) -> lustre@internals@vdom:attribute(STV).
on_keypress(Msg) ->
    on(<<"keypress"/utf8>>, fun(Event) -> _pipe = Event,
            _pipe@1 = (gleam@dynamic:field(
                <<"key"/utf8>>,
                fun gleam@dynamic:string/1
            ))(_pipe),
            gleam@result:map(_pipe@1, Msg) end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 100).
-spec on_keydown(fun((binary()) -> STX)) -> lustre@internals@vdom:attribute(STX).
on_keydown(Msg) ->
    on(<<"keydown"/utf8>>, fun(Event) -> _pipe = Event,
            _pipe@1 = (gleam@dynamic:field(
                <<"key"/utf8>>,
                fun gleam@dynamic:string/1
            ))(_pipe),
            gleam@result:map(_pipe@1, Msg) end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 111).
-spec on_keyup(fun((binary()) -> STZ)) -> lustre@internals@vdom:attribute(STZ).
on_keyup(Msg) ->
    on(<<"keyup"/utf8>>, fun(Event) -> _pipe = Event,
            _pipe@1 = (gleam@dynamic:field(
                <<"key"/utf8>>,
                fun gleam@dynamic:string/1
            ))(_pipe),
            gleam@result:map(_pipe@1, Msg) end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 149).
-spec on_focus(SUH) -> lustre@internals@vdom:attribute(SUH).
on_focus(Msg) ->
    on(<<"focus"/utf8>>, fun(_) -> {ok, Msg} end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 154).
-spec on_blur(SUJ) -> lustre@internals@vdom:attribute(SUJ).
on_blur(Msg) ->
    on(<<"blur"/utf8>>, fun(_) -> {ok, Msg} end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 165).
-spec value(gleam@dynamic:dynamic_()) -> {ok, binary()} |
    {error, list(gleam@dynamic:decode_error())}.
value(Event) ->
    _pipe = Event,
    (gleam@dynamic:field(
        <<"target"/utf8>>,
        gleam@dynamic:field(<<"value"/utf8>>, fun gleam@dynamic:string/1)
    ))(_pipe).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 122).
-spec on_input(fun((binary()) -> SUB)) -> lustre@internals@vdom:attribute(SUB).
on_input(Msg) ->
    on(<<"input"/utf8>>, fun(Event) -> _pipe = value(Event),
            gleam@result:map(_pipe, Msg) end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 174).
-spec checked(gleam@dynamic:dynamic_()) -> {ok, boolean()} |
    {error, list(gleam@dynamic:decode_error())}.
checked(Event) ->
    _pipe = Event,
    (gleam@dynamic:field(
        <<"target"/utf8>>,
        gleam@dynamic:field(<<"checked"/utf8>>, fun gleam@dynamic:bool/1)
    ))(_pipe).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 129).
-spec on_check(fun((boolean()) -> SUD)) -> lustre@internals@vdom:attribute(SUD).
on_check(Msg) ->
    on(<<"change"/utf8>>, fun(Event) -> _pipe = checked(Event),
            gleam@result:map(_pipe, Msg) end).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 182).
-spec mouse_position(gleam@dynamic:dynamic_()) -> {ok, {float(), float()}} |
    {error, list(gleam@dynamic:decode_error())}.
mouse_position(Event) ->
    gleam@result:then(
        (gleam@dynamic:field(<<"clientX"/utf8>>, fun gleam@dynamic:float/1))(
            Event
        ),
        fun(X) ->
            gleam@result:then(
                (gleam@dynamic:field(
                    <<"clientY"/utf8>>,
                    fun gleam@dynamic:float/1
                ))(Event),
                fun(Y) -> {ok, {X, Y}} end
            )
        end
    ).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 201).
-spec prevent_default(gleam@dynamic:dynamic_()) -> nil.
prevent_default(_) ->
    nil.

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 140).
-spec on_submit(SUF) -> lustre@internals@vdom:attribute(SUF).
on_submit(Msg) ->
    on(
        <<"submit"/utf8>>,
        fun(Event) ->
            _ = prevent_default(Event),
            {ok, Msg}
        end
    ).

-file("/Users/hayleigh/work/lustre-labs/lustre/src/lustre/event.gleam", 215).
-spec stop_propagation(gleam@dynamic:dynamic_()) -> nil.
stop_propagation(_) ->
    nil.
