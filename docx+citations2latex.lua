function Cite(cite)
  local text = pandoc.utils.stringify(cite.content)
  local keys = {}

  for key in text:gmatch("@([%w_%-%.:]+)") do
    -- Strip CSL disambiguation suffix: 2025a -> 2025
    key = key:gsub("(%d%d%d%d)[a-z]$", "%1")
    table.insert(keys, key)
  end

  if #keys > 0 then
    return pandoc.RawInline("latex", "\\cite{" .. table.concat(keys, ",") .. "}")
  end

  -- fallback: use pandoc citation IDs
  local ids = {}
  for _, c in ipairs(cite.citations) do
    table.insert(ids, c.citationId)
  end
  return pandoc.RawInline("latex", "\\cite{" .. table.concat(ids, ",") .. "}")
end
