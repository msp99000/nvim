local _, bufferline = pcall(require("bufferline"))

if not bufferline then
  return
end

bufferline.setup({})
