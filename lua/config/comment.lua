local status_ok, comment = pcall(require, "Comment")
if not status_ok then
    vim.notify("Couldn't load the comment plugin")
    return
end

comment.setup()
