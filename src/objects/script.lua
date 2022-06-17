--- Properties of the script object
-- most of these properties are optional !
--
-- script is an object for implementing your own object
-- within code
-- it allows you to run code in any part of the update
-- process you want
--
-- @module object.script

local properties = {}

--- script OBJECT PROPERTIES
-- @table properties
-- @field code [function] a function that gets called on update. the function gets passed the object as an argument + the event
-- @field graphic [function] a function that gets run on draw. the function gets passed the object as an argument

return properties