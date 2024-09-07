-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/alex/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?.lua;/home/alex/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?/init.lua;/home/alex/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?.lua;/home/alex/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/alex/.cache/nvim/packer_hererocks/2.1.1720049189/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  codeshade = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/codeshade",
    url = "https://github.com/alexm3133/codeshade"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugin-config/gitsigns\frequire\0" },
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["melange-nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/melange-nvim",
    url = "https://github.com/savq/melange-nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-jdtls"] = {
    config = { "\27LJ\2\nñ\6\0\0\b\0\21\0*6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1'\3\4\0B\1\2\2\18\2\1\0'\3\5\0006\4\6\0009\4\a\0049\4\b\0046\6\6\0009\6\a\0069\6\t\6B\6\1\2'\a\n\0B\4\3\2&\2\4\0025\3\14\0005\4\v\0\18\5\1\0'\6\f\0&\5\6\5>\5\n\4\18\5\1\0'\6\r\0&\5\6\5>\5\f\4>\2\14\4=\4\15\0036\4\0\0'\6\16\0B\4\2\0029\4\17\0045\6\18\0B\4\2\2=\4\19\0039\4\20\0\18\6\3\0B\4\2\1K\0\1\0\20start_or_attach\rroot_dir\1\4\0\0\fgradlew\tmvnw\t.git\14find_root\16jdtls.setup\bcmd\1\0\2\rroot_dir\0\bcmd\0\\/alexcode/gits/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_linuxè\1/alexcode/gits/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar\1\14\0\0\tjava6-Declipse.application=org.eclipse.jdt.ls.core.id1'-Dosgi.bundles.defaultStartLevel=46-Declipse.product=org.eclipse.jdt.ls.core.product\24-Dlog.protocol=true\20-Dlog.level=ALL\v-Xms1g\v-Xmx2G\t-jar\0\19-configuration\0\n-data\v:p:h:t\vgetcwd\16fnamemodify\afn\bvim\16/workspace/\tHOME\vgetenv\aos\njdtls\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/alex/.local/share/nvim/site/pack/packer/opt/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-scrollview"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-scrollview",
    url = "https://github.com/dstein64/nvim-scrollview"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-cpp-enhanced-highlight"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-cpp-enhanced-highlight",
    url = "https://github.com/octol/vim-cpp-enhanced-highlight"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-javacomplete2"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-javacomplete2",
    url = "https://github.com/artur-shaik/vim-javacomplete2"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugin-config/gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType java ++once lua require("packer.load")({'nvim-jdtls'}, { ft = "java" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
