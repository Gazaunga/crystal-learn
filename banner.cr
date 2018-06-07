#!/usr/bin/env crystal

require "colorize"

module Banner

def music
print %Q{
(づ｡◕‿‿◕｡)づ 󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠​​​​​​​​​​♬♩♪·♫ 󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠󠀠​​​​​​​​​​♬♩♪·♫
}.colorize(:yellow)
end

end

class Show_Help
include Banner
end

help = Show_Help.new

help.music
