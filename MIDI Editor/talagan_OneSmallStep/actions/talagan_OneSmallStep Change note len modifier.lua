-- @noindex
-- @author Ben 'Talagan' Babut
-- @license MIT
-- @description This is part of One Small Step

package.path      = debug.getinfo(1,"S").source:match[[^@?(.*[\/])actions[\/][^\/]-$]] .."?.lua;".. package.path;
local engine_lib  = require "classes/engine_lib";
local modifier    = select(2, reaper.get_action_context()):match("%- ([^%s]*)%.lua$");

engine_lib.setNoteLenModifier(engine_lib.NoteLenModifier[modifier])