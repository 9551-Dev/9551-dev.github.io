--- a lot of functions that are unrelated but useful functions
-- @module[kind=modules] guih.lib.general

local general = {}
local tables = {}

-- checks if a cordinate is a within certain bounds
-- @tparam number x the x cordinate
-- @tparam number y the y cordinate
-- @tparam number box_x the x coordinate of the left top of the bounds
-- @tparam number box_y the y coordinate of the left top of the bounds
-- @tparam number box_width the width of the bounds
-- @tparam number box_height the height of the bounds
-- @treturn boolean true if the cordinate is within the bounds
function general.is_within_field(x,y,box_x,box_y,box_width,box_height)
end


--- converts HSV (Hue,Saturation,value) to RGB
-- @tparam number hue hue
-- @tparam number sat saturation
-- @tparam number val value
-- @treturn number red
-- @treturn number green
-- @treturn number blue
function general.HSVToRGB(hue,sat,val)
end

--- makes an uuid4 identifier from
-- @treturn string uuid4
function general.uuid4()
end

--- special version of sleep that uses epoch time
-- allows for incredibly precise sleep timing
-- @tparam number time the amount of seconds to sleep
function general.precise_sleep(time)
end

--- cuts string into individual characters and returns them in a table
-- @tparam string str the string to cut
-- @treturn table the table of character
function general.piece_string(str)
end

--- creates a table with empty blit tables
-- @tparam number count the amount of blit values to create
-- @treturn table the table of blit value tables
function general.create_blit_array(count)
end

--- makes an multi dimensional array. used for storing 2D or any D maps
-- @tparam number dimensions the amounts of dimensions to create in the array
-- @tparam[opt] table original allows attaching to an existing table
-- @treturn table the resulting table
function tables.createNDarray(dimensions,original)
end

--- slowly (iteratevely) gets element count in an table
-- @tparam table tbl the table to get the element count from
-- @treturn number the amount of elements in the table
function tables.get_true_table_len(tbl)
end

--- compares 2 tables by value
-- @tparam table tbl1 the first table to compare
-- @tparam table tbl2 the second table to compare
-- @treturn boolean true if the tables are the same
function tables.compare_table(tbl1,tbl2)
end

--- switches x,y values in an 2D map
-- @tparam table map the map to switch the values in
-- @treturn table the switched map
function tables.switchXYArray(map)
end

--- basically general.tables.createNDarray but with set dimensions to 2
-- @param[opt] map the map to attach to
-- @treturn table the resulting table
function tables.create2Darray(map)
end

--- basically general.tables.createNDarray but with set dimensions to 3
-- @param[opt] map the map to attach to
-- @treturn table the resulting table
function tables.create3Darray(map)
end

--- an iterator function. merge between pairs and ipairs
-- iterates elements in order like ipairs does but doesnt stop on nils
-- only works on tables with number only indices
-- @tparam table tbl the table to iterate over
-- @treturn function the iterator function that can be used in an for loop
function tables.iterate_order(tbl)
end

--- merges any amount of tables together
-- @tparam table ... the tables to merge
-- @treturn table the merged table
function tables.merge(...)
end

--- a look up table with events that contain cordinate data
-- @field[readonly] general.events_with_cords
general.events_with_cords = {}

return general