--- here are shown properties that every object has.
-- most of these properties are optional !
-- @module guih.base_object_properties

local properties = {}

--- GENERIC OBJECT PROPERTIES
-- @table properties
-- @field name [string] the name of the object that can be used to access it later
-- @field visible [boolean] should the objects graphic.lua file get ran. in other words should the object get drawn
-- @field reactive [boolean] should this objects logic.lua file get ran. in other words should the object be responsive
-- @field react_to_events [table] a lookup table with the events that this object should respond to
-- @field btn [table] a look up table with all the mouse buttons this object should respond to (labeled with ids. so {false,true} will have it only respond to right click)
-- @field order [number] the general update order for this object
-- @field logic_order [number] the order for the logic.lua file to update. higher means later
-- @field graphic_order [number] the order for the graphic.lua file to update. lets say you want a button to be on top of a square. there are 2 solutions. you can make squares graphic_order lower or buttons graphic_order higher

return properties