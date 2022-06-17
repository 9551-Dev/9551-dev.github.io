--- Manipulators used for copying cutting and pasting objects
-- @module guih.manipulators

local object = {}
local put_in_handle = {}

--- compleatly kills/removes an object
-- @treturn boolean whether was this operation successful or not
function object.kill()
end

--- returns the positioning data of an object if it has any
-- @treturn table positioning data of the object
function object.get_position()
end

--- makes a copy of the object with a new name
-- @tparam string new_name new name for the duplicate object
-- @treturn guih.object returns the duplicate object
function object.replicate(new_name)
end

--- makes an isolated copy object wihnout adding it to the gui
-- @treturn put_in_handle a handle used to work with the isolated object
function object.isolate()
end

--- removes the object from the gui and gives you a handle to manipulate it
-- @treturn put_in_handle a handle used to work with the isolated object
function object.cut()
end

--- puts the object into the gui under the same or a new name
-- @tparam[opt] string name optional new name for the object
-- @return refference to the object in the gui or false
function put_in_handle.parse(name)
end

--- returns a reference to the object in memory
-- so you can modify it wihnout inserting it into the gui
-- @treturn object_reference the reference to the object upvalue
function put_in_handle.get()
end

--- compleatly destroys the saved object
function put_in_handle.clear()
end

return object