-- Provides hierarchi bar.
return {
  'utilyre/barbecue.nvim',
  -- ft = { "yaml", "json" },
  event = { 'LspAttach' },
  tag = 'v1.2.0',
  name = 'barbecue',
  version = '*',
  dependencies = {
    'SmiteshP/nvim-navic',
  },
  opts = {
    attach_navic = true,
    create_autocmd = true,
    include_buftypes = { '' },
    exclude_filetypes = { 'netrw', 'toggleterm' },
    modifiers = {
      dirname = ':~:.',
      basename = '',
    },
    show_dirname = true,
    show_basename = true,
    show_modified = false,
    modified = function(bufnr)
      return vim.bo[bufnr].modified
    end,
    show_navic = true,
    lead_custom_section = function()
      return ' '
    end,
    custom_section = function()
      return ' '
    end,
    theme = 'auto',
    context_follow_icon_color = false,
    symbols = {
      modified = '●',
      ellipsis = '…',
      separator = '»',
      -- separator = "",
    },
    kinds = {
      File = '',
      Module = '',
      Namespace = '',
      Package = '',
      Class = '',
      Method = '',
      Property = '',
      Field = '',
      Constructor = '',
      Enum = '',
      Interface = '',
      Function = '',
      Variable = '',
      Constant = '',
      String = '',
      Number = '',
      Boolean = '',
      Array = '',
      Object = '',
      Key = '',
      Null = '',
      EnumMember = '',
      Struct = '',
      Event = '',
      Operator = '',
      TypeParameter = '',
    },
  },
}
