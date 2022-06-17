--- Properties of the primitive.text object
-- most of these properties are optional !
--
-- this is how GuiH defines text. you can make a new text using @{guih.main_ui.text} with the values below
-- any text used on objects in GuiH needs to be represted like this !
--
-- @module primitive.object.text

local properties = {}

--- primitive.text OBJECT CREATION PROPERTIES
-- @table properties
-- @field text the text this object will represted
-- @field[opt] x the x positions to draw the text at
-- @field[opt] y the y positions to draw the text at
-- @field[opt] centered should the text be centered (default in the middle of the entire screen)
-- @field[opt] offset_x the x offset to draw the text at
-- @field[opt] offset_y the y offset to draw the text at
-- @field[opt] blit the blit data to draw the text with
-- @field[opt] transparent should the text have transparent background (default false)
-- @field[opt] bg the background color to draw the text with
-- @field[opt] fg the foreground color to draw the text with
-- @field[opt] width the width to center the text between. can be used to centering text within a box. default is fullscreen
-- @field[opt] height the height to center the text between. can be used to centering text within a box. default is fullscreen

return properties