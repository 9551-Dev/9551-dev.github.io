--- Lib used for loading custom fonts and adding segmented displays
-- @module[kind=modules] guih.lib.sevensh

local sevensh = {}
local display = {}

--- makes a new segmented display
-- @tparam terminal terminal the terminal object to make the new display on
-- @tparam number x the x position of the display
-- @tparam number y the y position of the display
-- @tparam[opt] string/number the value to display from the fonts dictionary
-- @tparam[opt] string font the font used for this display
-- @tparam[opt] number bg the background color of the display
-- @tparam[opt] string symbol the symbol to draw the display with
-- @tparam[opt] number fg the foreground color of the display
-- @treturn display table with all the functions needed for interacting with the display
function sevensh.create_display(terminal,x,y,value,font,bg,symbol,fg)
end

--- updates the display on the screeen to the current values
function display:update()
end

--- repositions the display
-- @tparam number x the new x position of the display
-- @tparam number y the new y position of the display
function display:reposition(x,y)
end

--- sets a new background color to the display
-- @tparam number bg the new background color
function display:set_background(bg)
end

--- sets a new foreground color to the display
-- @tparam number fg the new foreground color
function display:set_color(fg)
end

--- sets a new symbol to draw the display with
-- @tparam string symbol the new symbol
function display:set_symbol(symbol)
end

--- sets a new value to the display
-- @tparam string/number value the new value to display
function display:set_value(value)
end

--- changes the font of the display
-- @tparam string font the new font to use
function display:set_font(font)
end

--- sets a new terminal to display the display on
-- @tparam terminal terminal the new terminal to display the display on
function display:set_term(terminal)
end

return sevensh