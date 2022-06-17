--- Logging api used for making logs on terminal objects
-- @module[kind=modules] guih.lib.log

local log = {}
local log_object = {}

--- makes a new log in the desired terminal window
-- @tparam terminal the terminal object to make the new log on
-- @tparam[opt] string title the title to display on the log
-- @tparam[opt] string title_symbol the background symbol to use for the title
-- @treturns log_object table with all the functions needed for interacting with the log
function log.create_log(terminal,title,title_symbol)
end

--- writes a new message to the log
-- @tparam string message the message to write to the log
-- @tparam number type the log type to write the log with (sets the color and style.)
function log_object(message,type)
end

--- dumps the log into a file
-- @tparam string path the path to the file to dump the log to
-- @treturn string the string written into the said file
function log_object:dump(path)
end

--- Error Log type used by the {log_object:log} function
-- @field[readonly] log.error
-- @see main_ui.log
log_object.error = 1

--- Warn Log type used by the {log_object:log} function
-- @field[readonly] log_object.warn
-- @see main_ui.log
log_object.warn = 2

--- Fatal Log type used by the {log_object:log} function
-- @field[readonly] log_object.fatal
-- @see main_ui.log
log_object.fatal = 3

--- Success Log type used by the {log_object:log} function
-- @field[readonly] log_object.success
-- @see main_ui.log
log_object.success = 4

--- Message Log type used by the {log_object:log} function
-- @field[readonly] log_object.message
-- @see main_ui.log
log_object.message = 6

--- Update Log type used by the {log_object:log} function
-- @field[readonly] log_object.update
-- @see main_ui.log
log_object.update = 7

--- Info Log type used by the {log_object:log} function
-- @field[readonly] log_object.info
-- @see main_ui.log
log_object.info = 8

return log