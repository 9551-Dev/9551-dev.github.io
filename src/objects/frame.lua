--- Properties of the frame object
-- most of these properties are optional !
--
-- a frame is a special type of gui object/window that can be dragged around with your mouse
-- you can also use it for creating thing such as draggers but that might be bit overkill to use a window for that
--
-- @module object.frame

local properties = {}
local read_properties = {}
local dragger = {}

--- frame OBJECT CREATION PROPERTIES
-- @table properties
-- @field x [number] the starting x position of the frame
-- @field y [number] the starting y position of the frame
-- @field width [number] the starting width of the object
-- @field height [number] the starting height of the object
-- @field dragger [table] definition of the box that the window can be dragged by
-- @field dragable [boolean] sets whether the window can be dragged by the user or not
-- @field on_move [function] gets called when the window gets moved. gets passed the object and the event as an argument. if returns true the window wont get moved. allowing for custom move handling
-- @field on_select [function] gets called when the window gets selected. gets passed the object and the event as an argument.
-- @field on_any [function] gets called every time the frame updates in any non-graphic way
-- @field on_graphic [function] gets ran every time the graphic.lua file of the frame gets ran. allowing for custom well timed updates of graphics inside the frame
-- @field on_deselect [function] gets called when the window gets dropped. gets passed the object and the event as an argument.


--- frame OBJECT READ PROPERTIES
-- @table read_properties
-- @field dragged [boolean] gets set to true when the window is currently dragged
-- @field last_click [table] table of 2 coordinates storing the last move position of the frame. used internaly
-- @field window [table] the standard window object for this frame
-- @field child [@{guih.main_ui}] the child gui for this frame

--- dragger table properties
-- @table dragger
-- @field x [number] the x position of the dragger
-- @field y [number] the y position of the dragger
-- @field width [number] the width of the dragger
-- @field height [number] the height of the dragger

return properties,read_properties