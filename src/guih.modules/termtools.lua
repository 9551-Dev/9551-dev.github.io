--- Api for mirroring and sharing of terminal objects
-- @module[kind=modules] guih.lib.termtools

local termtools = {}

--- makes one or more terminals miriror a base terminal
-- @tparam terminal base the base terminal to mirror
-- @tparam terminal ... the terminals to mirror base on
-- @treturn terminal the mirrored terminal
function termtools.mirror(base,...)
end

--- attempts to create a terminal that acts like all of the inputed terminals at the same time
-- @tparam terminal ... the terminals to merge
-- @treturn terminal the merged terminal
function termtools.make_shared(...)
end

return termtools