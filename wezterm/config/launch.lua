local platform = require('utils.platform')()

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_mac then
   options.default_prog = { 'zsh' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash' } },
      { label = 'Zsh', args = { 'zsh' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'bash' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash' } },
      { label = 'Zsh', args = { 'zsh' } },
   } 
end

return options
