local M = {}

--- Remove an entry from table by value
---@param tbl table The table to remove from
---@param value? any The value from the table to remove
---@return table # The table with the removed value
function M.removeByValue(tbl, value)
  local index

  for i, v in pairs(tbl) do
    if v == value then
      index = i
      break
    end
  end

  if not (index == nil) then table.remove(tbl, index) end
  return tbl
end

return M
