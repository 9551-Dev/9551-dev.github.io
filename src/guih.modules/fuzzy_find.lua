--- Functions for sorting and comparing strings in an "average" match way instead of fully comparing and providing similarity values
-- @module[kind=modules] guih.lib.fuzzy_find

local fuzzy_find = {}

--- compares 2 strings and returns the percentage of similarity
-- @tparam string str the string to compare with the pattern
-- @tparam string pattern the pattern to compare the string with. pretty much just another string
-- @treturn number percentage of similarity
function fuzzy_find.fuzzy_match(str,pattern)
end

--- sorts table by its keys depending on similiariry of the key to the pattern
-- @tparam table tbl the table to sort
-- @tparam string pattern the pattern to compare the keys with
-- @treturn table sorted table
function fuzzy_find.sort_strings(tbl,pattern)
end

return fuzzy_find